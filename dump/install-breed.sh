#!/bin/sh

cp /etc_ro/lighttpd/www/adm/system_command.shtml /tmp/system_command.shtml

/bin/rm /tmp/installer.sh
/bin/rm /tmp/install.log
/bin/rm /tmp/checksum_breed
/bin/rm /tmp/md5_breed
/bin/rm /tmp/breed.bin

echo '<pre><!--#exec cmd="cat /tmp/install.log"--></pre><script>setInterval(function(){window.location.reload()},1000);</script>' > /etc_ro/lighttpd/www/adm/system_command.shtml

cat <<EOF > /tmp/installer.sh
#!/bin/sh

echo "a8265440e702da98ba664847d3dc2e53"  > /tmp/checksum_breed

{
    echo -e "Breed Installer Bolt BL-100/BL-201\n"
    echo -e "Mempersiapkan ...\n"
    
    echo -e "ID : \`id\`"
    echo -e "Layout memori : \n\`cat /proc/mtd\`\n"

    echo "Mengunduh Breed ..."
    echo "Pastikan anda memiliki koneksi internet ..."
    wget --content-disposition -O /tmp/breed.bin https://raw.githubusercontent.com/yHpgi/openwrt-bl201-boluwrt/main/dump/breed-mt7620-reset26.bin

    chmod +x /tmp/breed.bin

    /usr/bin/md5sum /tmp/breed.bin | /usr/bin/awk '{print \$1}' > /tmp/md5_breed

    if [ "\`cat /tmp/md5_breed\`" != "\`cat /tmp/checksum_breed\`" ]; then
        echo -e "\nChecksum tidak cocok !"
        echo "Valid Checksum: \`cat /tmp/checksum_breed\`"
        echo "File Checksum: \`cat /tmp/md5_breed\`"
        
        echo -e "\nMembatalkan penginstalan !"
        exit 0
    fi

    echo -e "Valid Breed Checksum: \`cat /tmp/md5_breed\`\n"
    
    echo -e "---------------------- PERINGATAN !!! -------------------------"
    echo -e "| Memulai penginstalan ...                                    |"
    echo -e "| Jangan matikan perangkat, atau perangkat akan mati total !  |"
    echo -e "---------------------------------------------------------------\n"

    echo -e "Menginstal breed ke memori ...\n"
    mtd_write write /tmp/breed.bin Bootloader

    echo '<pre><!--#exec cmd="cat /tmp/install.log"--></pre>' > /etc_ro/lighttpd/www/adm/system_command.shtml
    echo "Penginstalan selesai, memulai ulang perangkat ..."

    reboot

} > /tmp/install.log 2>&1
EOF

chmod +x /tmp/installer.sh
/bin/sh /tmp/installer.sh &