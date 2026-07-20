# 📰 Portal Berita Maga

Portal Berita Maga adalah sistem manajemen konten (CMS) portal berita modern yang dibangun menggunakan **Laravel 12** dan **Filament Admin Panel**. Aplikasi ini memungkinkan administrator mengelola artikel, kategori, penulis, serta banner iklan melalui dashboard admin yang intuitif, sekaligus menyajikan portal berita yang responsif dan SEO-friendly untuk pengunjung.

<img width="1735" height="1080" alt="Image" src="https://github.com/user-attachments/assets/b0354ccb-4ce8-4e12-a160-7e19b870e0a5" /> <br>
---

## 🚀 Tech Stack

- Laravel 12
- PHP 8.2+
- Filament Admin Panel v3
- MySQL / MariaDB
- Blade Template Engine
- Tailwind CSS
- Vite

---

## ✨ Fitur

### Frontend

- 📰 Homepage Berita
- 📄 Detail Artikel
- ⭐ Artikel Unggulan
- 🆕 Artikel Terbaru
- 📂 Kategori Berita
- 🔍 SEO Friendly URL (Slug)
- 📱 Responsive Layout
- 📢 Banner Ads
- 🖼️ Square Ads

### Admin Panel

- Dashboard Filament
- Manajemen Artikel
- Manajemen Kategori
- Manajemen Penulis
- Manajemen Banner Iklan
- Upload Thumbnail
- Rich Text Editor
- Featured Article
- Soft Delete Data

---

## 📁 Struktur Project

```
portal-berita-maga/
├── app/
├── bootstrap/
├── config/
├── database/
├── public/
├── resources/
│   ├── css/
│   ├── js/
│   └── views/
├── routes/
├── storage/
├── tests/
├── vendor/
├── composer.json
├── package.json
└── README.md
```

---

## 📦 Persyaratan Sistem

| Software | Versi |
|----------|--------|
| PHP | >= 8.2 |
| Composer | Terbaru |
| Node.js | >= 20 |
| NPM | Terbaru |
| MySQL | 8+ |

---

# ⚙️ Instalasi

## 1. Clone Repository

```bash
git clone https://github.com/username/portal-berita-maga.git

cd portal-berita-maga
```

---

## 2. Install Dependency

```bash
composer install
```

```bash
npm install
```

---

## 3. Copy Environment

Linux / Mac

```bash
cp .env.example .env
```

Windows

```cmd
copy .env.example .env
```

---

## 4. Generate Key

```bash
php artisan key:generate
```

---

## 5. Konfigurasi Database

Edit file `.env`

```env
APP_NAME="Portal Berita Maga"

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=db_portal_berita
DB_USERNAME=root
DB_PASSWORD=
```

---

## 6. Jalankan Migration

```bash
php artisan migrate
```

Jika tersedia Seeder

```bash
php artisan db:seed
```

---

## 7. Storage Link

```bash
php artisan storage:link
```

---

## 8. Jalankan Vite

Development

```bash
npm run dev
```

Production

```bash
npm run build
```

---

## 9. Menjalankan Aplikasi

```bash
php artisan serve
```

Akses aplikasi

```
http://127.0.0.1:8000
```

---

# 🔐 Dashboard Admin

```
http://127.0.0.1:8000/admin
```

Membuat akun administrator:

```bash
php artisan make:filament-user
```

---

# 📰 Modul Artikel

- Judul Artikel
- Slug Otomatis
- Thumbnail
- Konten Berita
- Kategori
- Penulis
- Artikel Unggulan
- Soft Delete

---

# 📂 Modul Kategori

- Tambah Kategori
- Edit Kategori
- Hapus Kategori

---

# 👤 Modul Penulis

- Nama Penulis
- Foto Penulis
- Profil Penulis

---

# 📢 Modul Banner Ads

Mendukung dua jenis banner:

### Banner

Banner utama yang tampil pada halaman depan.

### Square

Banner berbentuk persegi yang tampil pada halaman detail artikel.

Status banner:

- Active
- Inactive

---

# 📌 Routing

| URL | Keterangan |
|------|------------|
| `/` | Homepage |
| `/details/{slug}` | Detail Artikel |
| `/category/{slug}` | Artikel Berdasarkan Kategori |
| `/admin` | Dashboard Admin |

---

# 🔧 Perintah Artisan

Clear Cache

```bash
php artisan optimize:clear
```

Cache Config

```bash
php artisan config:cache
```

Cache Route

```bash
php artisan route:cache
```

Cache View

```bash
php artisan view:cache
```

---

# 🧪 Testing

```bash
php artisan test
```

---

# 📄 Lisensi

Project ini menggunakan framework Laravel yang berlisensi **MIT License**.

---
# Preview
<img width="1382" height="2460" alt="Image" src="https://github.com/user-attachments/assets/56062421-98ae-4722-ab61-9d9df01a4f42" />
---

---
# Preview Admin
<img width="1600" height="818" alt="image" src="https://github.com/user-attachments/assets/9cf5e9b4-edf3-4b5e-bf43-76ad16b5069a" /><br>
<img width="1598" height="811" alt="image" src="https://github.com/user-attachments/assets/b4df590e-8744-42bb-a124-4633141e7b8d" /><br>
<img width="1597" height="819" alt="image" src="https://github.com/user-attachments/assets/01247c09-3bf9-4190-a987-1fd253e067cf" /><br>

#UseradminDefault
| email | Pass |
|------|------------|
| `team@maga.com` | password |

---


# 👨‍💻 Developer

**Portal Berita Maga** dikembangkan menggunakan:

- Laravel 12
- Filament Admin Panel v3
- Blade
- Tailwind CSS
- MySQL
- Vite

---

© 2026 Portal Berita Maga. All Rights Reserved.
