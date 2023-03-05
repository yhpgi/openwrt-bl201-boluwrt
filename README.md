# BoluWrt-bl201

OpenWrt dengan kustomisasi kernel untuk memperbaiki masalah WiFi yang lemah.

>  Password login : (kosong)

>  Password WiFi (2.4Ghz dan 5Ghz) : (kosong)

>  Default IP : 192.168.1.1

### Screenshoot

![image.png](https://github.com/yHpgi/openwrt-bl201-boluwrt/blob/34ca0acba0102bb9f5b5dd5bafa2131d24ccd43d/screenshoot/image.png)

![image.png](https://github.com/yHpgi/openwrt-bl201-boluwrt/blob/34ca0acba0102bb9f5b5dd5bafa2131d24ccd43d/screenshoot/Capture.PNG)

![image.png](https://github.com/yHpgi/openwrt-bl201-boluwrt/blob/111c61e391a00800cc3ac89778ea4e1c9cac35f9/screenshoot/kernel_log.PNG)


### Changelog 

  #### BoluWrt 1.1

    1. Mengoptimalkan driver WiFi
    2. Tambahan fitur pada LED
    3. Fix nama firmware
    4. Didasarkan pada Xiaomi WiFi Mini

  #### BoluWrt 1.0

    Based on LEDE 17.01.0 r3205-59508e3 dengan beberapa perubahan pada kernel untuk optimalisasi driver WiFi.

    Dasar software : Xiaomi MiWifi Mini

    Tambahan Aplikasi :
      1. luci-app-vnstat
      2. luci-app-sqm

    Dengan tema Argon yang dikustomisasi agar dapat berjalan di LEDE 17 sebagai default.

### Known Bugs :
  1. LuCi rusak jika menggunakan tema Bootstrap

### TODO :
  [-] Fix LuCi yang rusak saat menggunakan tema Bootsrap
    
    > Solusi sementara (melalui SSH) jika terlanjur / tidak sengaja mengganti ke tema bootsrap
      
    uci set luci.themes.Argon=/luci-static/argon
    uci set luci.main.mediaurbase=/luci-static/argon
    uci commit luci
    
    
  [x] Fix Kernel di build openwrt 18.06.0 ke atas

#### *Source code nunggu internet cepet buat diupload ><

Download Link : https://github.com/yHpgi/openwrt-bl201-boluwrt/releases/
