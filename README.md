<div align="center">

# ✈️ Mini_Project_2_PAB

### 🌍 Travel Itinerary Planner Application  
💙 Flutter Mobile Application

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:3A4F7A,100:2EC4B6&height=180&section=header&text=Travel%20Planner%20App&fontSize=30&fontColor=ffffff" />

<br>

![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Language-Dart-0175C2?style=for-the-badge&logo=dart)
![Supabase](https://img.shields.io/badge/Database-Supabase-3FCF8E?style=for-the-badge&logo=supabase)

</div>

---

<details open>
<summary><b>👩‍💻 Created By</b></summary>

<br>

<div align="center">

| 🧾 Informasi | 📌 Detail |
|--------------|-----------|
| **Nama** | Tsabitah Kawiswara |
| **Kelas** | Sistem Informasi C |
| **NIM** | 2409116099 |
| **Mata Kuliah** | Pemrograman Aplikasi Bergerak (PAB) |

</div>

</details>

---

<details open>
<summary><b>📱 Tentang Aplikasi — overview, tujuan, dan teknologi</b></summary>

<br>

## 🌟 Overview

Travel Itinerary Planner App adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna menyusun dan mengelola rencana perjalanan secara lebih terstruktur, efisien, dan modern.

Aplikasi ini menyediakan fitur autentikasi pengguna menggunakan **Supabase Authentication**, sehingga setiap user dapat mengakses dan mengelola data itinerary secara aman. Selain itu, aplikasi juga mendukung pengelolaan itinerary seperti menambah, mengedit, menghapus, melihat detail perjalanan, memfilter status perjalanan, serta menampilkan statistik perjalanan.

Tidak hanya itu, aplikasi juga mendukung **Dark Mode dan Light Mode** agar tampilan lebih nyaman digunakan sesuai preferensi pengguna.

### 🎯 Tujuan Aplikasi

Aplikasi ini dibuat dengan tujuan untuk:
- Membantu pengguna mencatat rencana perjalanan secara lebih terorganisir
- Mempermudah pengelolaan aktivitas perjalanan harian
- Memberikan pengalaman penggunaan yang modern melalui tampilan yang interaktif
- Mengimplementasikan konsep Flutter, navigasi, state management sederhana, dan integrasi Supabase dalam aplikasi mobile

### 🛠️ Teknologi yang Digunakan

- **Flutter** → framework utama untuk membangun aplikasi mobile
- **Dart** → bahasa pemrograman utama
- **Supabase Authentication** → autentikasi login dan register
- **Supabase Database** → penyimpanan data itinerary
- **Provider / Theme Provider** → mengatur dark mode dan light mode
- **Flutter Widgets** → membangun antarmuka dan interaksi aplikasi

</details>

---

<details open>
<summary><b>🚀 Fitur Utama — login, itinerary, statistik, filter, tema</b></summary>

<br>

- ✅ Register akun menggunakan **Supabase Authentication**
- ✅ Login akun menggunakan email dan password
- ✅ Menambahkan itinerary perjalanan
- ✅ Mengedit itinerary
- ✅ Menghapus itinerary
- ✅ Filter itinerary berdasarkan status
- ✅ Statistik perjalanan
- ✅ Dark Mode & Light Mode
- ✅ Snackbar / notifikasi aksi pengguna
- ✅ Validasi input form
- ✅ Koneksi ke database Supabase menggunakan file `.env`

</details>

---

<details open>
<summary><b>🖼️ Dokumentasi Tampilan Aplikasi — semua halaman utama dan penjelasan</b></summary>

<br>

<details>
<summary><b>🌟 1. Welcome Page</b></summary>

<br>

<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/63d593ca0a4d02fa8e724ff936882740e75f120e/Screenshot%202026-03-16%20071141.png" width="260" />

<br>
<sub><i>Gambar 1. Tampilan Welcome Page</i></sub>

</div>

<br>

**Penjelasan:**  
Welcome Page merupakan halaman pertama yang muncul saat aplikasi dijalankan. Halaman ini berfungsi sebagai tampilan awal aplikasi yang memberikan gambaran singkat mengenai Travel Planner App.

Pada halaman ini, pengguna dapat memilih untuk:
- Login ke akun yang sudah ada
- Register / membuat akun baru

</details>

---

<details>
<summary><b>🔐 2. Login Page</b></summary>

<br>

<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/d4f034e1741bfa63d6ce21d64ee8416b53d70fdf/Screenshot%202026-03-16%20073112.png" width="260" />

<br>
<sub><i>Gambar 2. Tampilan Login Page</i></sub>

</div>

<br>

**Penjelasan:**  
Login Page digunakan untuk proses autentikasi pengguna dengan memasukkan email dan password yang telah terdaftar di Supabase Authentication.

Jika data login benar, maka pengguna akan diarahkan ke halaman utama aplikasi.

</details>

---

<details>
<summary><b>📝 3. Register Page</b></summary>

<br>

<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/7ad6de620eea23eea3f337c5037b906ddcf70ec2/Screenshot%202026-03-16%20091412.png" width="260" />

<br>
<sub><i>Gambar 3. Tampilan Register Page</i></sub>

</div>

<br>

**Penjelasan:**  
Register Page digunakan untuk membuat akun baru dengan memasukkan email dan password.

Data registrasi akan dikirim ke **Supabase Authentication**. Jika berhasil, akun baru akan tercatat pada dashboard Supabase.

</details>

---

<details>
<summary><b>🏠 4. Home Page</b></summary>

<br>

<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/2606a88c37ee0b509f35f73982294f790ebbcbf7/Screenshot%202026-03-16%20090429.png" width="260" />

<br>
<sub><i>Gambar 4. Tampilan Home Page</i></sub>

</div>

<br>

**Penjelasan:**  
Home Page merupakan halaman utama aplikasi setelah pengguna berhasil login. Pada halaman ini ditampilkan daftar itinerary perjalanan pengguna.

**Fitur yang tersedia pada Home Page:**
- Header aplikasi
- Daftar itinerary
- Filter itinerary
- Tombol tambah itinerary
- Navigasi ke halaman detail

</details>

---

<details>
<summary><b>📝 5. Form Tambah / Edit Itinerary</b></summary>

<br>

<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/70e3e53f08d46ddb4b5c15b3d50c53e98a7387df/Screenshot%202026-03-16%20090633.png" width="260" />

<br>
<sub><i>Gambar 5. Form tambah dan edit itinerary</i></sub>

</div>

<br>

**Penjelasan:**  
Halaman ini digunakan untuk menambahkan data itinerary baru atau mengedit data itinerary yang sudah ada.

**Data yang dapat diisi pengguna antara lain:**
- Hari perjalanan
- Tanggal
- Waktu
- Aktivitas
- Status perjalanan

</details>

---


<details>
<summary><b>📊 6. Trip Statistics</b></summary>

<br>

<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/74eb754f09972e4628b31fdeab004766a0a65338/Screenshot%202026-03-16%20092046.png" width="260" />

<br>
<sub><i>Gambar 7. Halaman statistik perjalanan</i></sub>

</div>

<br>

**Penjelasan:**  
Halaman statistik menampilkan ringkasan data perjalanan pengguna, seperti:
- jumlah itinerary
- itinerary planned
- itinerary done
- progress perjalanan

</details>

---

<details>
<summary><b>🌙 8. Dark Mode & ☀️ Light Mode</b></summary>

<br>

<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/219012fa846c0e65b7c91c68ef6e1ca05fc77fd6/Screenshot%202026-03-16%20092231.png" width="260" />

<br>
<sub><i>Gambar 8. Tampilan Dark Mode</i></sub>

<br><br>

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/a50d525597673be37d8cc8ee7d8f2d5b19556c84/Screenshot%202026-03-16%20092400.png" width="260" />

<br>
<sub><i>Gambar 9. Tampilan Light Mode</i></sub>

</div>

<br>

**Penjelasan:**  
Aplikasi mendukung dua mode tampilan, yaitu:
- **Light Mode**, untuk tampilan terang
- **Dark Mode**, untuk tampilan gelap

Fitur ini dibuat agar aplikasi lebih nyaman digunakan dalam berbagai kondisi pencahayaan.

</details>

</details>

---

<details open>
<summary><b>🧩 Widget yang Digunakan — daftar widget, letak kode, dan fungsi</b></summary>

<br>

<details>
<summary><b>1. MaterialApp</b></summary>

<br>

**Letak kode:** `lib/main.dart`  
**Fungsi:** Sebagai root widget aplikasi Flutter dan pengatur tema serta halaman awal.  
**Hasil:** Aplikasi dapat berjalan dengan struktur Material Design dan mendukung navigasi antar halaman.

</details>

---

<details>
<summary><b>2. Scaffold</b></summary>

<br>

**Letak kode:** Digunakan hampir di semua halaman, seperti:
- `lib/pages/welcome_page.dart`
- `lib/pages/login_page.dart`
- `lib/pages/register_page.dart`
- `lib/pages/home_page.dart`
- `lib/pages/form_page.dart`
- `lib/pages/detail_page.dart`
- `lib/pages/stats_page.dart`

**Fungsi:** Menjadi kerangka dasar halaman seperti `body`, `appBar`, `floatingActionButton`, dan lain-lain.  
**Hasil:** Setiap halaman memiliki struktur tampilan yang rapi dan konsisten.

</details>

---

<details>
<summary><b>3. Container</b></summary>

<br>

**Letak kode:** Digunakan pada berbagai halaman seperti `welcome_page.dart`, `home_page.dart`, dan halaman lain untuk dekorasi UI.  
**Fungsi:** Membungkus widget lain dan memberi dekorasi seperti warna, padding, margin, border, dan background.  
**Hasil:** Tampilan aplikasi menjadi lebih menarik dan terstruktur.

</details>

---

<details>
<summary><b>4. Column dan Row</b></summary>

<br>

**Letak kode:** Hampir di semua halaman pada folder `lib/pages/`  
**Fungsi:**  
- `Column` untuk menyusun widget secara vertikal  
- `Row` untuk menyusun widget secara horizontal  

**Hasil:** Komponen aplikasi dapat tersusun rapi sesuai desain yang diinginkan.

</details>

---

<details>
<summary><b>5. Text</b></summary>

<br>

**Letak kode:** Digunakan di seluruh file halaman  
**Fungsi:** Menampilkan teks seperti judul, label, deskripsi, dan informasi itinerary.  
**Hasil:** Informasi pada aplikasi tampil jelas dan mudah dibaca.

</details>

---

<details>
<summary><b>6. TextField / TextFormField</b></summary>

<br>

**Letak kode:**  
- `lib/pages/login_page.dart`
- `lib/pages/register_page.dart`
- `lib/pages/form_page.dart`

**Fungsi:** Menerima input dari pengguna seperti email, password, nama kegiatan, tanggal, waktu, dan status itinerary.  
**Hasil:** Pengguna dapat mengisi data yang diperlukan pada aplikasi.

</details>

---

<details>
<summary><b>7. TextEditingController</b></summary>

<br>

**Letak kode:**  
- `lib/pages/login_page.dart`
- `lib/pages/register_page.dart`
- `lib/pages/form_page.dart`

**Fungsi:** Mengontrol isi input dan mengambil nilai dari `TextField`.  
**Hasil:** Data input pengguna dapat diproses lebih lanjut oleh aplikasi.

</details>

---

<details>
<summary><b>8. ListView.builder</b></summary>

<br>

**Letak kode:** `lib/pages/home_page.dart`  
**Fungsi:** Menampilkan daftar itinerary berdasarkan data yang tersedia.  
**Hasil:** Itinerary tampil dalam bentuk list yang bisa di-scroll.

</details>

---

<details>
<summary><b>9. GestureDetector</b></summary>

<br>

**Letak kode:** `lib/pages/home_page.dart`  
**Fungsi:** Mendeteksi interaksi seperti tap pada item itinerary.  
**Hasil:** Pengguna dapat menekan item untuk membuka halaman detail.

</details>

---

<details>
<summary><b>10. FloatingActionButton</b></summary>

<br>

**Letak kode:** `lib/pages/home_page.dart`  
**Fungsi:** Tombol aksi utama untuk menambahkan itinerary baru.  
**Hasil:** User dapat dengan cepat menuju halaman tambah itinerary.

</details>

---

<details>
<summary><b>11. Navigator.push() dan Navigator.pop()</b></summary>

<br>

**Letak kode:** Digunakan hampir di seluruh halaman  
**Fungsi:**  
- `Navigator.push()` untuk pindah halaman  
- `Navigator.pop()` untuk kembali ke halaman sebelumnya  

**Hasil:** Navigasi antar halaman berjalan dengan baik.

</details>

---

<details>
<summary><b>12. SnackBar</b></summary>

<br>

**Letak kode:**  
- `lib/pages/login_page.dart`
- `lib/pages/register_page.dart`
- `lib/pages/form_page.dart`

**Fungsi:** Memberi notifikasi singkat saat aksi berhasil/gagal.  
**Hasil:** Pengguna mendapat feedback langsung, misalnya saat login berhasil atau itinerary berhasil ditambahkan.

</details>

---

<details>
<summary><b>13. ChoiceChip</b></summary>

<br>

**Letak kode:** `lib/pages/home_page.dart`  
**Fungsi:** Menyaring itinerary berdasarkan status seperti `All`, `Planned`, dan `Done`.  
**Hasil:** Data itinerary dapat difilter sesuai kebutuhan pengguna.

</details>

---

<details>
<summary><b>14. StatefulWidget</b></summary>

<br>

**Letak kode:** Halaman seperti `home_page.dart`, `form_page.dart`, `login_page.dart`, dan `register_page.dart`  
**Fungsi:** Digunakan saat tampilan perlu berubah sesuai data atau state.  
**Hasil:** UI bisa diperbarui saat data berubah.

</details>

---

<details>
<summary><b>15. StatelessWidget</b></summary>

<br>

**Letak kode:** Misalnya pada `welcome_page.dart`  
**Fungsi:** Digunakan untuk komponen atau halaman yang tidak membutuhkan perubahan state.  
**Hasil:** Komponen statis menjadi lebih sederhana dan efisien.

</details>

---

<details>
<summary><b>16. setState()</b></summary>

<br>

**Letak kode:**  
- `lib/pages/home_page.dart`
- `lib/pages/form_page.dart`

**Fungsi:** Memperbarui state agar tampilan di-render ulang.  
**Hasil:** Saat data bertambah, berubah, atau difilter, tampilan langsung ikut berubah.

</details>

</details>

---

<details open>
<summary><b>🛠️ Perancangan dan Implementasi Aplikasi — penjelasan alur, hasil widget, dan bagian kode</b></summary>

<br>

Bagian ini menjelaskan bagaimana komponen Flutter diterapkan pada aplikasi sehingga menghasilkan tampilan dan interaksi yang terlihat oleh pengguna. Penjelasan tidak hanya berfokus pada nama widget, tetapi juga pada **hasil implementasinya**, **tujuannya**, serta **letak bagian kode** yang mendukung fitur tersebut.

---

<details>
<summary><b>1. Perancangan Card Itinerary pada Home Page</b></summary>

<br>

### 📌 Tujuan
Card itinerary dirancang agar setiap data perjalanan dapat ditampilkan secara ringkas, rapi, dan mudah dipahami. Dalam satu card, pengguna dapat langsung melihat informasi penting seperti hari perjalanan, tanggal, waktu, aktivitas, dan status itinerary.

### 🧱 Widget / Konsep yang Digunakan
- `Container`
- `Card` atau custom container card
- `Row` dan `Column`
- `Text`
- `Icon`
- `ListView.builder`

### 📂 Letak kode
- `lib/pages/home_page.dart`

### 💡 Penjelasan implementasi
Pada halaman Home Page, daftar itinerary ditampilkan menggunakan `ListView.builder` agar data bisa muncul secara dinamis sesuai jumlah itinerary yang tersimpan di database.  
Setiap item itinerary dibungkus dalam `Container` atau card custom agar tampil seperti kartu terpisah dan lebih nyaman dibaca.

`Row` dan `Column` digunakan untuk menyusun isi card. Biasanya, `Column` dipakai untuk menyusun informasi utama seperti hari, tanggal, waktu, dan aktivitas secara vertikal, sedangkan `Row` digunakan untuk mengatur posisi ikon aksi seperti edit, hapus, dan detail di sisi kanan.

Status itinerary seperti **Planned** atau **Done** juga dapat dibedakan melalui warna tertentu agar pengguna lebih cepat mengenali kondisi perjalanan.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">
  
<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/d5e42e1914103b8177954b267dc55b4222a11416/Screenshot%202026-03-16%20102940.png" width="400" />

<br>
<sub><i>Gambar 10. Tampilan card itinerary pada Home Page</i></sub>

</div>

### ✅ Hasil akhir
Dengan rancangan ini, daftar itinerary tampil lebih modern, terstruktur, dan mudah diakses pengguna tanpa harus membuka detail terlebih dahulu.

</details>

---

<details>
<summary><b>2. Interaksi pada Card: Swipe, Geser, atau Ubah Posisi</b></summary>

<br>

### 📌 Tujuan
Interaksi pada card dibuat agar pengguna dapat mengelola itinerary secara lebih praktis, misalnya dengan menggeser card untuk menampilkan aksi tertentu, atau memindahkan urutan itinerary agar sesuai kebutuhan perjalanan.

### 🧱 Widget / Konsep yang Digunakan
- `Dismissible` → jika card bisa di-swipe untuk hapus / aksi tertentu
- `ReorderableListView` → jika item bisa dipindah urutannya
- `GestureDetector` / `InkWell`
- `IconButton`
- `setState()`

### 📂 Letak kode
- `lib/pages/home_page.dart`

### 💡 Penjelasan implementasi
Jika card itinerary dapat **di-swipe**, maka biasanya Flutter menggunakan widget `Dismissible`. Widget ini memungkinkan pengguna menggeser item ke kiri atau ke kanan untuk melakukan aksi seperti menghapus data atau menampilkan opsi tambahan.

Jika card itinerary dapat **dipindah-pindah urutannya**, maka biasanya digunakan `ReorderableListView`. Widget ini memungkinkan pengguna menahan salah satu item lalu menggesernya ke posisi lain di dalam daftar. Setelah urutan berubah, state akan diperbarui agar tampilan langsung mengikuti data terbaru.

Jika pada project ini perpindahan dilakukan melalui ikon tiga garis atau drag handle, maka logika perpindahan item biasanya berada pada daftar yang dibangun di `home_page.dart`.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/d8a2e9901b45f1c46c3e78eec06266f601013582/Screenshot%202026-03-16%20112859.png" width="400" />


<br>
<sub><i>Gambar 11. Interaksi swipe atau geser pada card itinerary</i></sub>

<br><br>


</div>

### ✅ Hasil akhir
Dengan adanya interaksi swipe atau reorder, pengelolaan itinerary menjadi lebih fleksibel, cepat, dan terasa lebih interaktif bagi pengguna.


</details>

---

<details>
<summary><b>3. Perancangan Form Input Data Itinerary</b></summary>

<br>

### 📌 Tujuan
Form input dirancang agar pengguna dapat menambahkan atau mengedit itinerary dengan mudah, terstruktur, dan meminimalkan kesalahan input.

### 🧱 Widget / Konsep yang Digunakan
- `Form`
- `TextFormField`
- `TextEditingController`
- `DropdownButtonFormField` / pilihan status
- `ElevatedButton`
- `Validator`

### 📂 Letak kode
- `lib/pages/form_page.dart`

### 💡 Penjelasan implementasi
Halaman form digunakan untuk dua kebutuhan utama, yaitu **menambah itinerary baru** dan **mengedit itinerary yang sudah ada**. Untuk itu, input pengguna diatur menggunakan `TextFormField` dan `TextEditingController`.

Controller berfungsi untuk menampung nilai input dari pengguna, sedangkan validator digunakan untuk memastikan bahwa data yang dimasukkan tidak kosong atau tidak sesuai format yang diharapkan.

Struktur form biasanya dibuat vertikal dengan `Column`, agar urutan input terasa natural: mulai dari hari, tanggal, waktu, aktivitas, lalu status. Tombol simpan ditempatkan di bagian bawah agar alur pengisian lebih nyaman.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/207f6c8f123e9eae85fc11fa2b5b27b4752c5de9/Screenshot%202026-03-16%20114709.png" width="400" />
<br>
<sub><i>Gambar 13. Tampilan form input itinerary</i></sub>

</div>

### ✅ Hasil akhir
Form menjadi lebih terarah dan memudahkan pengguna untuk mengisi data perjalanan secara lengkap.

</details>

---

<details>
<summary><b>5. Input Manual dengan Keyboard</b></summary>

<br>

### 📌 Tujuan
Input manual digunakan untuk data yang memang perlu diketik langsung oleh pengguna, seperti nama aktivitas atau keterangan perjalanan.

### 🧱 Widget / Konsep yang Digunakan
- `TextFormField`
- `TextEditingController`

### 📂 Letak kode
- `lib/pages/form_page.dart`

### 💡 Penjelasan implementasi
Kolom seperti **aktivitas** biasanya menggunakan `TextFormField` biasa agar pengguna bisa mengetik bebas sesuai kebutuhan.  
Controller digunakan untuk mengambil nilai input, sedangkan validator membantu memastikan kolom tidak kosong saat tombol simpan ditekan.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/876e5772064f8ad43cc685943b9930fdb1186c68/Screenshot%202026-03-16%20115228.png" width="400" />

<br>
<sub><i>Gambar 14. Input data dengan cara mengetik langsung</i></sub>

</div>

### ✅ Hasil akhir
Pengguna dapat memasukkan data teks secara fleksibel, cepat, dan mudah diproses oleh sistem.

</details>

---

<details>
<summary><b>6. Input Tanggal Menggunakan DatePicker / Kalender</b></summary>

<br>

### 📌 Tujuan
Pemilihan tanggal menggunakan kalender dibuat agar input tanggal lebih akurat, konsisten, dan mengurangi kesalahan format penulisan.

### 🧱 Widget / Konsep yang Digunakan
- `TextFormField` (readOnly)
- `showDatePicker()`
- `TextEditingController`

### 📂 Letak kode
- `lib/pages/form_page.dart`

### 💡 Penjelasan implementasi
Untuk input tanggal, biasanya kolom dibuat `readOnly` agar pengguna tidak mengetik manual. Saat kolom ditekan, aplikasi akan memanggil `showDatePicker()` untuk menampilkan kalender.

Setelah pengguna memilih tanggal, hasilnya akan dikonversi menjadi teks lalu dimasukkan ke controller agar tampil pada field. Pendekatan ini membuat format tanggal lebih seragam dan menghindari kesalahan pengetikan.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">
  
<img src="https://github.com/bitasabita/Mini_Project_2_PAB/blob/2e8fde346736c2daa92af7ecee5dbd86c0927385/Screenshot%202026-03-16%20115959.png" width="400" />
<br>
<sub><i>Gambar 15. Pemilihan tanggal menggunakan kalender</i></sub>

</div>

### ✅ Hasil akhir
Input tanggal menjadi lebih praktis, rapi, dan valid karena dipilih langsung dari komponen kalender.

</details>

---

<details>
<summary><b>7. Input Waktu Menggunakan TimePicker</b></summary>

<br>

### 📌 Tujuan
Pemilihan waktu menggunakan time picker bertujuan agar jam kegiatan bisa diisi dengan format yang konsisten dan lebih mudah dipilih pengguna.

### 🧱 Widget / Konsep yang Digunakan
- `TextFormField` (readOnly)
- `showTimePicker()`
- `TextEditingController`

### 📂 Letak kode
- `lib/pages/form_page.dart`

### 💡 Penjelasan implementasi
Sama seperti input tanggal, kolom waktu biasanya dibuat tidak diketik manual. Ketika pengguna menekan field waktu, aplikasi akan menampilkan `showTimePicker()`.

Nilai waktu yang dipilih kemudian diubah menjadi format teks tertentu, misalnya `HH:mm`, lalu dimasukkan ke controller supaya tampil pada field form.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

![image](

<br>
<sub><i>Gambar 16. Pemilihan waktu menggunakan time picker</i></sub>

</div>

### ✅ Hasil akhir
Pemilihan waktu menjadi lebih cepat, seragam, dan mudah dipahami oleh pengguna.

</details>

---

<details>
<summary><b>8. Pemilihan Status Itinerary</b></summary>

<br>

### 📌 Tujuan
Status itinerary digunakan untuk menandai kondisi perjalanan, misalnya masih direncanakan atau sudah selesai.

### 🧱 Widget / Konsep yang Digunakan
- `DropdownButtonFormField`, `ChoiceChip`, atau komponen pilihan lain
- `setState()`

### 📂 Letak kode
- `lib/pages/form_page.dart`
- `lib/pages/home_page.dart`

### 💡 Penjelasan implementasi
Pada form, status dapat dipilih menggunakan komponen pilihan seperti dropdown atau selector agar pengguna hanya memilih opsi yang tersedia. Ini penting untuk menjaga konsistensi data di database.

Status tersebut kemudian ditampilkan kembali di Home Page, misalnya dalam bentuk warna atau label tertentu pada card itinerary.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

![image](

<br>
<sub><i>Gambar 17. Pemilihan status itinerary pada form</i></sub>

</div>

### ✅ Hasil akhir
Data status menjadi lebih konsisten dan memudahkan proses filter maupun statistik.

</details>

---

<details>
<summary><b>9. Filter Itinerary Berdasarkan Status</b></summary>

<br>

### 📌 Tujuan
Filter dibuat agar pengguna dapat menampilkan itinerary sesuai kategori yang dibutuhkan, seperti semua data, itinerary planned, atau itinerary done.

### 🧱 Widget / Konsep yang Digunakan
- `ChoiceChip`
- `setState()`
- proses filter list

### 📂 Letak kode
- `lib/pages/home_page.dart`

### 💡 Penjelasan implementasi
Filter pada Home Page biasanya dibuat menggunakan `ChoiceChip`, karena tampilannya ringkas dan cocok untuk pilihan kategori pendek.  
Saat salah satu chip dipilih, nilai filter akan diperbarui menggunakan `setState()`, lalu daftar itinerary yang ditampilkan akan menyesuaikan status yang dipilih.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

![image](

<br>
<sub><i>Gambar 18. Filter itinerary berdasarkan status</i></sub>

</div>

### ✅ Hasil akhir
Pengguna dapat lebih fokus melihat data perjalanan sesuai kebutuhan tanpa terganggu oleh data lain.

</details>

---

<details>
<summary><b>10. Statistik Perjalanan</b></summary>

<br>

### 📌 Tujuan
Halaman statistik dibuat untuk memberikan ringkasan visual mengenai perkembangan itinerary pengguna.

### 🧱 Widget / Konsep yang Digunakan
- `Container`
- `Text`
- `Row` / `Column`
- `LinearProgressIndicator` atau progress widget lain
- perhitungan data itinerary

### 📂 Letak kode
- `lib/pages/stats_page.dart`

### 💡 Penjelasan implementasi
Halaman statistik mengambil data itinerary yang tersedia, lalu menghitung jumlah keseluruhan, jumlah planned, jumlah done, serta progress perjalanan.  
Hasil perhitungan tersebut ditampilkan dalam bentuk angka dan progress bar agar lebih mudah dipahami.

Widget seperti `LinearProgressIndicator` sering digunakan untuk menunjukkan seberapa besar perjalanan yang sudah selesai dibandingkan total itinerary yang dimiliki pengguna.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

![image](
<br>
<sub><i>Gambar 19. Tampilan statistik perjalanan</i></sub>

</div>

### ✅ Hasil akhir
Pengguna bisa melihat perkembangan perjalanan secara cepat tanpa harus menghitung data secara manual.

</details>

---

<details>
<summary><b>11. Implementasi Dark Mode dan Light Mode</b></summary>

<br>

### 📌 Tujuan
Fitur tema dibuat agar pengguna dapat menyesuaikan tampilan aplikasi dengan kenyamanan visual dan kondisi pencahayaan.

### 🧱 Widget / Konsep yang Digunakan
- `ThemeData`
- `ChangeNotifier` / `Provider`
- custom `theme_provider.dart`

### 📂 Letak kode
- `lib/theme/theme_provider.dart`
- `lib/main.dart`
- halaman yang menggunakan warna tema

### 💡 Penjelasan implementasi
Tema aplikasi diatur melalui `ThemeData` pada root aplikasi. Untuk mengubah tema secara dinamis, biasanya digunakan `ThemeProvider` yang menyimpan kondisi apakah aplikasi sedang menggunakan dark mode atau light mode.

Ketika pengguna menekan tombol toggle tema, provider akan memperbarui state lalu seluruh tampilan aplikasi ikut menyesuaikan warna, background, teks, dan elemen lainnya.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

![image](
<br>
<sub><i>Gambar 20. Implementasi pergantian dark mode dan light mode</i></sub>

</div>

### ✅ Hasil akhir
Aplikasi terasa lebih nyaman, modern, dan fleksibel untuk digunakan dalam berbagai situasi.

</details>

---

<details>
<summary><b>12. Feedback Aksi Pengguna dengan SnackBar</b></summary>

<br>

### 📌 Tujuan
SnackBar digunakan untuk memberikan umpan balik langsung kepada pengguna setelah melakukan aksi tertentu.

### 🧱 Widget / Konsep yang Digunakan
- `ScaffoldMessenger`
- `SnackBar`

### 📂 Letak kode
- `lib/pages/login_page.dart`
- `lib/pages/register_page.dart`
- `lib/pages/form_page.dart`

### 💡 Penjelasan implementasi
Setelah pengguna berhasil login, register, menambahkan itinerary, atau mengedit data, aplikasi menampilkan `SnackBar` sebagai notifikasi singkat.  
Komponen ini penting untuk memberi konfirmasi bahwa aksi pengguna berhasil diproses atau memberi tahu bila terjadi kesalahan.

### 🖼️ Dokumentasi hasil implementasi
<div align="center">

![image](
<br>
<sub><i>Gambar 21. Notifikasi SnackBar setelah aksi pengguna</i></sub>

</div>

### ✅ Hasil akhir
Pengguna mendapat feedback yang jelas sehingga interaksi dengan aplikasi terasa lebih komunikatif.

</details>

</details>

---


<details open>
<summary><b>🗂 Struktur Folder Project — susunan file utama</b></summary>

<br>

```bash
lib/
│
├── models/
│   └── itinerary_model.dart
│
├── pages/
│   ├── welcome_page.dart
│   ├── login_page.dart
│   ├── register_page.dart
│   ├── home_page.dart
│   ├── form_page.dart
│   ├── detail_page.dart
│   ├── stats_page.dart
│   └── profile_page.dart
│
├── theme/
│   └── theme_provider.dart
│
└── main.dart
```

</details>

---

<details open>
<summary><b>⚙️ Cara Menjalankan Project — clone, install, dan run</b></summary>

<br>

## 1. Clone repository
```bash
git clone https://github.com/bitasabita/Mini_Project_2_PAB.git
cd Mini_Project_2_PAB
```

## 2. Install dependency
```bash
flutter pub get
```

## 3. Buat file `.env`
Isi file `.env` dengan konfigurasi Supabase:

```env
SUPABASE_URL=your_supabase_url
SUPABASE_ANON_KEY=your_supabase_anon_key
```

## 4. Jalankan aplikasi
```bash
flutter run
```

</details>

---

<details open>
<summary><b>📌 Catatan Tambahan — highlight singkat project</b></summary>

<br>

Project ini dibuat sebagai tugas **Mini Project 2** pada mata kuliah **Pemrograman Aplikasi Bergerak (PAB)**.  
Aplikasi difokuskan pada implementasi Flutter dengan integrasi **Supabase Authentication**, manajemen data itinerary, statistik perjalanan, serta dukungan **dark/light mode**.

</details>

---

<div align="center">

### ✨ Terima Kasih Telah Melihat Project Ini ✨

Jika project ini bermanfaat, jangan lupa beri ⭐ pada repository.

</div>
