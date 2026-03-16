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

# 👩‍💻 Created By

<div align="center">

| 🧾 Informasi | 📌 Detail |
|--------------|-----------|
| **Nama** | Tsabitah Kawiswara |
| **Kelas** | Sistem Informasi C |
| **NIM** | 2409116099 |
| **Mata Kuliah** | Pemrograman Aplikasi Bergerak (PAB) |

</div>

---

# 📱 Travel Planner App

## 🌟 Overview

Travel Itinerary Planner App adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna menyusun dan mengelola rencana perjalanan secara lebih terstruktur, efisien, dan modern.

Aplikasi ini menyediakan fitur autentikasi pengguna menggunakan **Supabase Authentication**, sehingga setiap user dapat mengakses dan mengelola data itinerary secara aman. Selain itu, aplikasi juga mendukung pengelolaan itinerary seperti menambah, mengedit, menghapus, melihat detail perjalanan, memfilter status perjalanan, serta menampilkan statistik perjalanan.

Tidak hanya itu, aplikasi juga mendukung **Dark Mode dan Light Mode** agar tampilan lebih nyaman digunakan sesuai preferensi pengguna.

---

# 🚀 Fitur Utama Aplikasi

- ✅ Register akun menggunakan **Supabase Authentication**
- ✅ Login akun menggunakan email dan password
- ✅ Menambahkan itinerary perjalanan
- ✅ Mengedit itinerary
- ✅ Menghapus itinerary
- ✅ Melihat detail itinerary
- ✅ Filter itinerary berdasarkan status
- ✅ Statistik perjalanan
- ✅ Dark Mode & Light Mode
- ✅ Snackbar / notifikasi aksi pengguna
- ✅ Validasi input form
- ✅ Koneksi ke database Supabase menggunakan file `.env`

---

# 🖼️ Dokumentasi Tampilan Aplikasi

<details>
<summary><b>🌟 1. Welcome Page</b></summary>

<br>

<div align="center"> 

![image alt](https://github.com/bitasabita/Mini_Project_2_PAB/blob/63d593ca0a4d02fa8e724ff936882740e75f120e/Screenshot%202026-03-16%20071141.png)

<br><br>

<b>Penjelasan:</b>

Welcome Page merupakan halaman pertama yang muncul saat aplikasi dijalankan.  
Halaman ini berfungsi sebagai tampilan awal aplikasi yang memberikan gambaran singkat mengenai Travel Planner App.

Pada halaman ini, pengguna dapat memilih untuk:
- Login ke akun yang sudah ada
- Register / membuat akun baru

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot tampilan Welcome Page
- Nama file yang disarankan: <code>screenshots/welcome_page.png</code>

</div>

</details>

---

<details>
<summary><b>🔐 2. Login Page</b></summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT LOGIN PAGE -->
<!-- Screenshot yang disarankan: halaman login sebelum submit -->
<img src="screenshots/login_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Login Page digunakan untuk proses autentikasi pengguna dengan memasukkan email dan password yang telah terdaftar di Supabase Authentication.

Jika data login benar, maka pengguna akan diarahkan ke halaman utama aplikasi.

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot halaman login
- Screenshot saat login berhasil (boleh berupa snackbar atau langsung pindah halaman)
- Nama file yang disarankan:
  - <code>screenshots/login_page.png</code>
  - <code>screenshots/login_success.png</code>

</div>

</details>

---

<details>
<summary><b>📝 3. Register Page</b></summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT REGISTER PAGE -->
<!-- Screenshot yang disarankan: halaman register -->
<img src="screenshots/register_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Register Page digunakan untuk membuat akun baru dengan memasukkan email dan password.

Data registrasi akan dikirim ke **Supabase Authentication**. Jika berhasil, akun baru akan tercatat pada dashboard Supabase.

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot halaman register
- Screenshot saat register berhasil
- Screenshot dashboard Supabase Auth yang menunjukkan user berhasil dibuat
- Nama file yang disarankan:
  - <code>screenshots/register_page.png</code>
  - <code>screenshots/register_success.png</code>
  - <code>screenshots/supabase_auth_user.png</code>

</div>

</details>

---

<details>
<summary><b>🏠 4. Home Page</b></summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT HOME PAGE -->
<!-- Screenshot yang disarankan: halaman home dengan list itinerary -->
<img src="screenshots/home_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Home Page merupakan halaman utama aplikasi setelah pengguna berhasil login.  
Pada halaman ini ditampilkan daftar itinerary perjalanan pengguna.

Fitur yang tersedia pada Home Page:
- Header aplikasi
- Daftar itinerary
- Filter itinerary
- Tombol tambah itinerary
- Navigasi ke halaman detail

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot Home Page
- Screenshot saat data itinerary sudah tampil
- Nama file yang disarankan:
  - <code>screenshots/home_page.png</code>
  - <code>screenshots/home_with_data.png</code>

</div>

</details>

---

<details>
<summary><b>📝 5. Form Tambah / Edit Itinerary</b></summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT FORM PAGE -->
<!-- Screenshot yang disarankan: halaman form add/edit itinerary -->
<img src="screenshots/form_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Halaman ini digunakan untuk menambahkan data itinerary baru atau mengedit data itinerary yang sudah ada.

Data yang dapat diisi pengguna antara lain:
- Hari perjalanan
- Tanggal
- Waktu
- Aktivitas
- Status perjalanan

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot form tambah itinerary
- Screenshot form edit itinerary
- Screenshot snackbar berhasil menambah / mengedit
- Nama file yang disarankan:
  - <code>screenshots/form_add_page.png</code>
  - <code>screenshots/form_edit_page.png</code>
  - <code>screenshots/add_success.png</code>
  - <code>screenshots/edit_success.png</code>

</div>

</details>

---

<details>
<summary><b>📄 6. Detail Itinerary</b></summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT DETAIL PAGE -->
<!-- Screenshot yang disarankan: halaman detail itinerary -->
<img src="screenshots/detail_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Detail Itinerary Page menampilkan informasi lengkap dari itinerary yang dipilih pengguna.

Halaman ini memudahkan pengguna untuk melihat isi perjalanan secara lebih rinci.

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot halaman detail itinerary
- Nama file yang disarankan:
  - <code>screenshots/detail_page.png</code>

</div>

</details>

---

<details>
<summary><b>📊 7. Trip Statistics</b></summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT STATS PAGE -->
<!-- Screenshot yang disarankan: halaman statistik -->
<img src="screenshots/stats_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Halaman statistik menampilkan ringkasan data perjalanan pengguna, seperti:
- jumlah itinerary
- itinerary planned
- itinerary done
- progress perjalanan

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot halaman statistik
- Nama file yang disarankan:
  - <code>screenshots/stats_page.png</code>

</div>

</details>

---

<details>
<summary><b>🌙 8. Dark Mode & ☀️ Light Mode</b></summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT LIGHT MODE -->
<img src="screenshots/light_mode.png" width="300"/>

<br><br>

<!-- TARUH SCREENSHOT DARK MODE -->
<img src="screenshots/dark_mode.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Aplikasi mendukung dua mode tampilan, yaitu:
- **Light Mode**, untuk tampilan terang
- **Dark Mode**, untuk tampilan gelap

Fitur ini dibuat agar aplikasi lebih nyaman digunakan dalam berbagai kondisi pencahayaan.

<b>Dokumentasi yang perlu disiapkan:</b>
- Screenshot halaman yang sama dalam mode terang
- Screenshot halaman yang sama dalam mode gelap
- Disarankan gunakan halaman Home agar perbandingan lebih jelas
- Nama file yang disarankan:
  - <code>screenshots/light_mode.png</code>
  - <code>screenshots/dark_mode.png</code>

</div>

</details>

---

# 🧩 Widget yang Digunakan

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

---

# 🗂 Struktur Folder Project

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
