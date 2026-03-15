<div align="center">

# ✈️ Travel Planner App  

### 🌍 Smart Travel Itinerary Manager  
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

Travel Planner App adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna menyusun dan mengelola rencana perjalanan secara lebih terstruktur dan efisien.

Aplikasi ini memungkinkan pengguna untuk membuat itinerary perjalanan, mengedit rencana perjalanan, menghapus data itinerary, serta memonitor status perjalanan apakah masih dalam tahap perencanaan atau sudah selesai dilakukan.

Untuk meningkatkan pengalaman pengguna, aplikasi ini juga dilengkapi dengan fitur autentikasi akun menggunakan Supabase sehingga setiap pengguna dapat mengakses data itinerary secara lebih aman.

Selain itu aplikasi ini juga menyediakan tampilan modern dengan dukungan **Dark Mode dan Light Mode**, statistik perjalanan, serta notifikasi interaktif ketika pengguna melakukan aksi seperti menambah, mengedit, atau menghapus itinerary.

---

# 🚀 Fitur Utama Aplikasi

Aplikasi Travel Planner memiliki berbagai fitur utama sebagai berikut:

- ✅ Register & Login menggunakan **Supabase Authentication**
- ✅ Menambahkan itinerary perjalanan
- ✅ Mengedit itinerary
- ✅ Menghapus itinerary
- ✅ Melihat detail itinerary
- ✅ Filter itinerary (All / Planned / Done)
- ✅ Statistik perjalanan
- ✅ Dark Mode & Light Mode
- ✅ Notifikasi aksi pengguna (Snackbar)
- ✅ Validasi input pada form

---

# 🎨 Dokumentasi Tampilan Aplikasi

---

<details>
<summary>🌟 1. Welcome Page</summary>

<br>

<div align="center">



<img src="screenshots/welcome_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Welcome Page merupakan halaman pertama yang ditampilkan ketika aplikasi dibuka.  
Halaman ini berfungsi sebagai landing page yang memberikan gambaran awal mengenai aplikasi Travel Planner.

Pengguna dapat memilih untuk login atau membuat akun baru sebelum mengakses fitur utama aplikasi.

</div>

</details>

---

<details>
<summary>🔐 2. Login Page</summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT LOGIN PAGE -->

<img src="screenshots/login_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Login Page digunakan untuk mengautentikasi pengguna menggunakan email dan password.  
Autentikasi dilakukan menggunakan Supabase Authentication.

Jika login berhasil, pengguna akan diarahkan menuju halaman utama aplikasi.

</div>

</details>

---

<details>
<summary>📝 3. Register Page</summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT REGISTER PAGE -->

<img src="screenshots/register_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Register Page digunakan untuk membuat akun baru.  
Pengguna diminta memasukkan email dan password untuk mendaftarkan akun.

Setelah berhasil registrasi, pengguna dapat login untuk menggunakan aplikasi.

</div>

</details>

---

<details>
<summary>🏠 4. Home Page</summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT HOME PAGE -->

<img src="screenshots/home_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Home Page merupakan halaman utama aplikasi yang menampilkan daftar itinerary perjalanan pengguna.

Fitur yang tersedia pada halaman ini meliputi:

- Header dengan tampilan gradient modern
- Filter itinerary menggunakan ChoiceChip
- Daftar itinerary menggunakan ListView
- Tombol tambah itinerary menggunakan FloatingActionButton
- Navigasi ke halaman detail itinerary

</div>

</details>

---

<details>
<summary>📊 5. Trip Statistics</summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT STATS PAGE -->

<img src="screenshots/stats_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Halaman Trip Statistics menampilkan ringkasan perjalanan pengguna dalam bentuk statistik.

Informasi yang ditampilkan meliputi jumlah itinerary, status perjalanan, serta progress perjalanan.

</div>

</details>

---

<details>
<summary>📝 6. Form Tambah / Edit Itinerary</summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT FORM PAGE -->

<img src="screenshots/form_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Halaman ini digunakan untuk menambahkan atau mengedit data itinerary perjalanan.

Pengguna dapat mengisi hari perjalanan, tanggal, waktu, aktivitas, dan status perjalanan.

</div>

</details>

---

<details>
<summary>📄 7. Detail Itinerary</summary>

<br>

<div align="center">

<!-- TARUH SCREENSHOT DETAIL PAGE -->

<img src="screenshots/detail_page.png" width="300"/>

<br><br>

<b>Penjelasan:</b>

Detail Page menampilkan informasi lengkap dari itinerary yang dipilih oleh pengguna.

</div>

</details>

---

# 🧩 Widget yang Digunakan

Berikut adalah beberapa widget Flutter yang digunakan dalam pengembangan aplikasi ini:

### Root Widget
- MaterialApp
- Scaffold
- SafeArea

### Layout Widget
- Column
- Row
- Container
- Padding
- SizedBox
- Expanded

### List & UI
- ListView.builder
- GestureDetector
- FloatingActionButton
- IconButton

### Input & Form
- TextField
- DropdownButtonFormField
- TextEditingController

### Navigasi & State
- Navigator.push()
- Navigator.pop()
- StatefulWidget
- StatelessWidget
- setState()

### Feedback UI
- SnackBar
- ChoiceChip

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
