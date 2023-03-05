# BoluWrt-bl201

OpenWrt dengan kustomisasi kernel untuk memperbaiki masalah WiFi yang lemah.

>  Password login : (kosong)

>  Password WiFi (2.4Ghz dan 5Ghz) : (kosong)

>  Default IP : 192.168.1.1

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

Download Link : https://github.com/yHpgi/openwrt-bl201-boluwrt/releases/tag/main
