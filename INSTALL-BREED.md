# Berikut adalah langkah-langkah menginstall Breed-web

### 1. Persiapan

* Unduh Breed-web [disini](https://breed.hackpascal.net/). gunakan versi breed-mt7620-reset26.bin.
* Unduh program untuk telnet. bisa menggunakan [putty](https://www.putty.org/).


### 2. Mendapatkan akses telnet

* Lakukan backup konfigurasi, kemudian ekstrak.
* Edit 2860.dat menggunakan text editor.
* Cari MGMT_TELNET_WAN dan MGMT_TELNET_LAN.
* Ubah nilainya menjadi 1.
* Arsipkan kembali, lalu restore menggunakan konfigurasi ini.
* Reboot router

### 3. Install Breed-web

* Sambungkan koneksi telnet
* Login menggunakan informasi berikut:
    ```
    telnet 192.168.1.1

    login        : admin
    password     : db40
    ```

* Buka foder /tmp, kemudian salin file breed menggunakan wget.
    ```
    cd /tmp

    wget [url] -O uboot.bin
    ```

* Flash uboot.bin ke Bootloader menggunakan mtd_write
    ```
    mtd_write -r write uboot.bin Bootloader
    ```

* Tunggu hingga proses selesai, router akan reboot.

### Selesai

Bisa dilanjutkan dengan menginstall BoluWrt melalui Breed-web.
[Baca disini](https://github.com/yHpgi/openwrt-bl201-boluwrt#1-menggunakan-breed-web)