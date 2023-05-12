# BoluWrt-bl201

OpenWrt dengan kustomisasi kernel untuk memperbaiki masalah WiFi yang lemah.

**NOTES :** BL201 sekarang secara resmi didukung oleh [Lede](https://github.com/coolsnowwolf/lede), [Immortalwrt](https://github.com/immortalwrt/immortalwrt), dan [X-WRT](https://github.com/x-wrt/x-wrt).

### Screenshoot

![image.png](https://github.com/yHpgi/openwrt-bl201-boluwrt/blob/34ca0acba0102bb9f5b5dd5bafa2131d24ccd43d/screenshoot/image.png)

![image.png](https://github.com/yHpgi/openwrt-bl201-boluwrt/blob/34ca0acba0102bb9f5b5dd5bafa2131d24ccd43d/screenshoot/Capture.PNG)

![image.png](https://github.com/yHpgi/openwrt-bl201-boluwrt/blob/111c61e391a00800cc3ac89778ea4e1c9cac35f9/screenshoot/kernel_log.PNG)


### Changelog :

  #### BoluWrt 2.1 | Terbaru

    1. Optimalisasi fungsi LED
    2. Optimalisasi tema
    3. Fix opkg dengan cara berikut:

```
- Masuk ke menu software
- Ganti isi dari seluruh distribution feeds dengan value berikut:
    
src/gz chaos_calmer_base http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/mt7620/packages/base
src/gz chaos_calmer_telephony http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/mt7620/packages/telephony
src/gz chaos_calmer_packages http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/mt7620/packages/packages
src/gz chaos_calmer_routing http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/mt7620/packages/routing
src/gz chaos_calmer_luci http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/mt7620/packages/luci
src/gz chaos_calmer_management http://downloads.openwrt.org/chaos_calmer/15.05.1/ramips/mt7620/packages/management
```


  #### BoluWrt 2.0
  
    1. Init support untuk Bolt-BL201 (Tidak lagi menggunakan image dari Xiaomi)
    2. Semua LED berfungsi sebagaimana fungsinya
    3. Dua farian (dengan dan tanpa MWAN3 untuk load-balance)
    4. Kembali menggunakan tema bootstrap²
    5. Include SQM-QOS dan VNSTAT seperti biasa
    
    Bug yang diketahui : opkg³

   <sub>_2. Tema argon tidak bisa diterapkan di chaos-calmer T.T_</sub>
   <sub>_3. Link default opkg kedalwarsa._</sub>
    
  #### BoluWrt 1.1

    1. Mengoptimalkan driver WiFi
    2. Tambahan fitur pada LED
    3. Fix nama firmware
    4. Didasarkan pada Xiaomi WiFi Mini

  #### BoluWrt 1.0

    Based on LEDE 17.01.0 r3205-59508e3 
    dengan beberapa perubahan pada kernel untuk optimalisasi driver WiFi.
    
    Dasar software : Xiaomi MiWifi Mini
    Tambahan Aplikasi :
      1. luci-app-vnstat
      2. luci-app-sqm
      
    Dengan tema Argon yang dikustomisasi agar dapat berjalan di LEDE 17 sebagai default.

### Known Bugs :
  1. LuCi rusak jika menggunakan tema Bootstrap

### TODO :
-  [x] Fix LuCi yang rusak saat menggunakan tema Bootsrap

> Solusi sementara (melalui SSH) jika terlanjur / tidak sengaja mengganti ke tema bootsrap


```
uci set luci.themes.Argon=/luci-static/argon
uci set luci.main.mediaurbase=/luci-static/argon
uci commit luci
```
    
-  [ ] Fix Kernel di build openwrt 18.06.0 ke atas

### Penginstalan :

#### 1. Menggunakan Breed-Web

- Instal [Breed-web](https://breed.hackpascal.net)

> Breed-web bisa menggunakan milik `Xiaomi-miwifi-mini` dan `Yuoku-YK1`. Bisa juga menggunakan versi `breed-mt7620-reset26.bin`. jika menggunakan versi `breed-mt7620-reset26.bin`, tahan tombol reset kemudian colok adaptor untuk masuk ke menu Breed-web. 

> Harap berhati-hati saat menggunakan Breed-web. karena hanya tersedia dalam bahasa mandarin. pastikan Anda paham menu apa yang Anda klik.

- Masuk ke halaman Breed-web. Alamat IP Breed-web adalah `192.168.1.1`.

- Masuk ke menu upgrade lalu masukkan file sysupgeade pada kolom kedua dan eeprom pada kolom ketiga.

- Lalu klik mulai. konfirmasi penginstallan dan tunggu proses flashing berjalan hingga selesai.

#### 2. Menggunakan USB Programmer

Unduh file full image di halaman rilis, kemudian flash menggunakan usb programmer langsung ke chip eeprom.

#### 3. Menggunakan Openwrt sysupgrade

Bisa langsung melalui menu LuCi atau menggunakan cara dibawah, melalui SSH.

> Windows :
  
  Aplikasi yang diperlukan :
  
   1. [Putty](https://www.putty.org/)
   2. [WinScp](https://winscp.net/eng/download.php)
    
  Langkah-langkah :
  
  1. Login ke perangkat melalui WinScp dengan username dan password Openwrt anda;
  2. Unggah file sysupgrade ke folder `/tmp/` menggunakan WinScp;
  3. Lalu buka putty, Login;
  4. ketikkan perintah berikut :
     `sysupgrade -v -F -n /tmp/boluwrt-blablabla.bin`
  5. tekan Enter. dan tunggu proses flashing hingga selesai.

> Linux :

  - TODO
  
> Mac :

  - TODO

### Lain-lain :

```
Password login : (kosong)
Password WiFi (2.4Ghz dan 5Ghz) : (kosong)
Default IP : 192.168.1.1
```

> Source code nunggu internet cepet buat diupload ><

[Download Link](https://github.com/yHpgi/openwrt-bl201-boluwrt/releases/)

Link berguna [1](https://www.voycn.com/article/bianyimoujiyuopenwrtdesdk) | [2](https://blog.csdn.net/kuangzuxiaoN/article/details/121458746)
