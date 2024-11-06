Nama : Muhammad Rafi <br>
NIM : 20210801176 <br>

**Penjelasan mengenai CASED** <br>

Topologi menunjukan jaringan yang terdiri dari tiga subnet yang terhubung melalui router dan switch yang terhubung koneksi ke internet. <br>

## Router yang Terdapat dalam Topolgoi
- Router KJ terhubung dengan Switch KJ. <br>
- Router HI terhubung dengan Switch HI. <br>
- Router CR terhubung dengan Switch CR. <br>

Setiap router memiliki konfigurasi tunnel interface (IP-in-IP tunneling) yang digunakan untuk menghubungkan jaringan-jaringan yang berbeda. <br>

## Rute Statis
Rute Statis digunakan pada setiap router untuk memastikan setiap subnet dapat berkomunikasi satu sama lain melalui jalur yang ditentukan. <br>

Contohnya, pada konfigurasi Router KJ:
- Rute statis untuk Subnet HI (192.168.2.0/24) diarahkan melalui alamat IP tunnel 20.20.20.2.
- Rute statis untuk Subnet CR (192.168.3.0/24) diarahkan melalui alamat IP tunnel 20.20.20.3.

## Konfigurasi VLAN dan Switch
Masing-masing switch dikonfigurasi dalam mode akses untuk semua port, dan masing-masing port terhubung ke VLAN yang ditentukan: <br>
- Switch KJ terhubung ke VLAN 1 dan diberi nama Lab_Praktikum_KJ.
- Switch HI terhubung ke VLAN 2 dengan nama Lab_Praktikum_HI.
- Switch CR terhubung ke VLAN 3 dengan nama Lab_Praktikum_CR.

## Keaimpulan
Topologi ini cocok digunakan untuk jaringan yang membutuhkan koneksi melalui VLAN. Penggunaan tunneling dan rute statis membantu dalam memastikan konektivitas antara jaringan-jaringan yang terhubung. Konfigurasi ini menyediakan dasar untuk jaringan yang dibutuhkan terhadap ketiga cabang kampus, yaitu CR, KHI, dan KJ.
