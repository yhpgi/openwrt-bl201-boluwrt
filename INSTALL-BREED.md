<div align=center>
<h1>Berikut adalah langkah-langkah menginstall Breed-web</h1>
</div>

## 1. Cara Manual

<dl>
<dd>

### 1. Persiapan

* Unduh Breed-web [disini](https://breed.hackpascal.net/). Gunakan versi `breed-mt7620-reset26.bin` atau ambil [disini](dump/breed-mt7620-reset26.bin);

* Unduh program untuk telnet. bisa menggunakan [putty](https://www.putty.org/) atau windows terminal.

### 2. Mengaktikan Telnet

* Lakukan backup konfigurasi;

* Edit 2860.dat menggunakan text editor. pastikan text editor mendukung file binary;

* Cari MGMT_TELNET_WAN dan MGMT_TELNET_LAN;

* Ubah nilainya menjadi 1;

* Restore menggunakan konfigurasi yang telah dimodifikasi tersebut;

* Reboot router.

### 3. Instal Breed-web

* Sambungkan koneksi telnet;
    ```
    telnet [alamat-ip-router]
    ```

* Login menggunakan informasi berikut:
    ```
    login        : admin
    password     : db40
    ```

* Buka foder /tmp, kemudian salin file breed menggunakan wget;
    ```
    cd /tmp

    wget [url] -O uboot.bin
    ```

* Flash uboot.bin ke Bootloader menggunakan mtd_writ;
    ```
    mtd_write -r write uboot.bin Bootloader
    ```

* Tunggu hingga proses selesai, router akan reboot.

</dd>
</dl>

## 2. Menggunakan Script

<dl>
<dd>

### 1. Persiapan
* Koneksi internet.

### 2. Instal Breed-web
* Akses Web Router dengan mengetikkan IP Addressnya, login.

* Masuk ke halaman `http://[alamat-ip-router]/adm/system_command.shtml`

* Klik di input box command, masukkan perintah dibawah lalu klik Enter.

    ```
    wget -O- https://raw.githubusercontent.com/yHpgi/openwrt-bl201-boluwrt/main/dump/install-breed.sh | sh
    ```

* Proses instalasi akan berjalan. pastikan anda memiliki koneksi internet yang baik.

* Penginstalan akan otomatis dibatalkan jika file corupt.

* Tunggu hingga proses selesai. jika berhasil, akan muncul log di layar dan router akan auto-reboot setelah penginstalan selesai.

</dd>
</dl>

### Selesai

Bisa dilanjutkan dengan menginstall BoluWrt melalui Breed-web.
[Baca disini](https://github.com/yHpgi/openwrt-bl201-boluwrt#1-menggunakan-breed-web)