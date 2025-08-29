# SISCOM Test Flutter

Aplikasi Flutter yang dikembangkan sebagai proyek test untuk SISCOM dengan arsitektur Clean Architecture dan state management menggunakan BLoC pattern.

## 📋 Deskripsi

Aplikasi ini adalah proyek Flutter yang mengimplementasikan Clean Architecture dengan fitur-fitur modern seperti dependency injection, routing otomatis, dan state management yang robust. Aplikasi ini dirancang untuk menjadi template atau starting point yang dapat digunakan untuk pengembangan aplikasi Flutter skala enterprise.

## ✨ Fitur Utama

- 🏗️ **Clean Architecture** - Pemisahan yang jelas antara domain, application, infrastructure, dan presentation layer
- 🔄 **State Management** - Menggunakan BLoC pattern untuk state management yang predictable
- 🛠️ **Dependency Injection** - Menggunakan GetIt dan Injectable untuk dependency injection
- 🧭 **Auto Routing** - Routing otomatis dengan auto_route
- 🌐 **Network Layer** - HTTP client dengan Dio dan connectivity checking
- 💾 **Local Storage** - SharedPreferences untuk penyimpanan data lokal
- 🎨 **UI Components** - Komponen UI yang reusable dengan Shimmer loading
- 📱 **Cross Platform** - Mendukung iOS, Android, Web, Desktop (Windows, macOS, Linux)
- 🔤 **Custom Fonts** - Menggunakan font Inter dengan berbagai weight

## 🏛️ Arsitektur

Aplikasi ini mengikuti prinsip Clean Architecture dengan struktur direktori sebagai berikut:

```
lib/
├── application/          # Application layer (use cases, BLoCs)
├── domain/              # Domain layer (entities, repositories interfaces)
├── infrastructure/      # Infrastructure layer (implementations, external services)
├── presentation/        # Presentation layer (UI, pages, widgets)
├── common/             # Shared utilities dan constants
├── injection.dart      # Dependency injection setup
├── injection.config.dart
├── env.dart           # Environment configuration
└── main.dart          # Entry point aplikasi
```

### Layer Architecture:

1. **Domain Layer** - Berisi business logic, entities, dan repository interfaces
2. **Application Layer** - Berisi use cases dan BLoC classes
3. **Infrastructure Layer** - Implementasi repository dan external services
4. **Presentation Layer** - UI components, pages, dan widgets

## 🛠️ Teknologi yang Digunakan

### Core Dependencies:

- **Flutter SDK** - ^3.8.1
- **auto_route** - ^9.3.0 (Routing otomatis)
- **get_it** - ^8.0.3 (Dependency injection)
- **injectable** - ^2.5.0 (Code generation untuk DI)
- **dio** - ^5.8.0+1 (HTTP client)
- **flutter_bloc** - ^9.1.1 (State management)
- **bloc** - ^9.0.0 (BLoC pattern)

### UI & UX:

- **shimmer** - ^3.0.0 (Loading animation)
- **another_flushbar** - ^1.12.30 (Toast notifications)
- **loader_overlay** - ^5.0.0 (Loading overlay)
- **dropdown_search** - ^6.0.2 (Searchable dropdown)
- **flutter_svg** - ^2.2.0 (SVG support)

### Data & Storage:

- **shared_preferences** - ^2.5.3 (Local storage)
- **dartz** - ^0.10.1 (Functional programming)
- **freezed_annotation** - ^2.4.1 (Immutable data classes)
- **json_annotation** - ^4.9.0 (JSON serialization)

### Utilities:

- **connectivity_plus** - ^6.1.4 (Network connectivity)
- **path_provider** - ^2.1.5 (File system access)
- **intl** - ^0.20.2 (Internationalization)

## 📦 Prasyarat

Sebelum menjalankan aplikasi ini, pastikan Anda telah menginstall:

- **Flutter SDK** (versi 3.8.1 atau lebih baru)
- **Dart SDK** (versi 3.0 atau lebih baru)
- **Android Studio** atau **VS Code** dengan Flutter extension
- **Git**

## 🚀 Cara Instalasi

1. **Clone repository**

   ```bash
   git clone <repository-url>
   cd siscom_test_flutter
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate code** (untuk auto_route, freezed, injectable)

   ```bash
   flutter packages pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run aplikasi**
   ```bash
   flutter run
   ```

## 🔧 Konfigurasi

### Environment Configuration

File `lib/env.dart` berisi konfigurasi environment untuk development dan production:

```dart
enum Environment { dev, prod }
```

#### 🔗 Mengganti Base URL

Untuk mengganti base URL API, edit file `lib/env.dart`:

```dart
@Injectable(as: Env)
@dev
class DevEnv implements Env {
  @override
  String get baseUrl => 'http://your-dev-api-url.com'; // URL untuk development
}

@Injectable(as: Env)
@prod
class ProdEnv implements Env {
  @override
  String get baseUrl => 'https://your-prod-api-url.com'; // URL untuk production
}
```

**Langkah-langkah mengganti base URL:**

1. **Buka file `lib/env.dart`**
2. **Ganti URL di class `DevEnv`** untuk environment development
3. **Ganti URL di class `ProdEnv`** untuk environment production
4. **Restart aplikasi** setelah melakukan perubahan

**Catatan Penting:**

- Pastikan URL yang digunakan dapat diakses dari device/emulator
- Untuk development, gunakan IP address lokal jika testing di device fisik
- Untuk production, gunakan HTTPS untuk keamanan
- Setelah mengubah base URL, jalankan `flutter clean` dan `flutter pub get` jika diperlukan

**Menambahkan Environment Variables Lain:**

Untuk menambahkan konfigurasi environment lain (seperti API key, timeout, dll), edit file `lib/env.dart`:

```dart
abstract class Env {
  String get baseUrl;
  String get apiKey;        // Tambahkan getter baru
  int get timeout;          // Tambahkan getter baru
  bool get enableLogging;   // Tambahkan getter baru
}

@Injectable(as: Env)
@dev
class DevEnv implements Env {
  @override
  String get baseUrl => 'http://localhost:3000';

  @override
  String get apiKey => 'dev-api-key-123';

  @override
  int get timeout => 30000; // 30 detik

  @override
  bool get enableLogging => true;
}

@Injectable(as: Env)
@prod
class ProdEnv implements Env {
  @override
  String get baseUrl => 'https://api.example.com';

  @override
  String get apiKey => 'prod-api-key-456';

  @override
  int get timeout => 15000; // 15 detik

  @override
  bool get enableLogging => false;
}
```

**Troubleshooting Base URL:**

1. **URL tidak dapat diakses:**

   - Periksa koneksi internet
   - Pastikan server API berjalan
   - Cek firewall dan port yang digunakan

2. **CORS Error (untuk web):**

   - Pastikan server mengizinkan CORS
   - Tambahkan header yang diperlukan di server

3. **SSL Certificate Error:**

   - Untuk development, gunakan HTTP
   - Untuk production, pastikan SSL certificate valid

4. **IP Address tidak dapat diakses dari device:**
   - Pastikan device dan komputer dalam jaringan yang sama
   - Cek IP address komputer dengan `ipconfig` (Windows) atau `ifconfig` (Mac/Linux)

### Dependency Injection

Dependency injection dikonfigurasi menggunakan GetIt dan Injectable. File konfigurasi:

- `lib/injection.dart` - Setup dependency injection
- `lib/injection.config.dart` - Generated configuration

### Assets Configuration

Assets dikonfigurasi di `pubspec.yaml`:

- Images: `assets/images/`
- Icons: `assets/icons/`
- Fonts: `assets/fonts/`
- JSON: `assets/json/`

## 📱 Platform Support

Aplikasi ini mendukung multiple platform:

- ✅ **Android** - Minimum SDK 21
- ✅ **iOS** - iOS 11.0+
- ✅ **Web** - Modern browsers
- ✅ **Windows** - Windows 10+
- ✅ **macOS** - macOS 10.14+
- ✅ **Linux** - Ubuntu 18.04+

## 🧪 Testing

Untuk menjalankan test:

```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/

# Coverage report
flutter test --coverage
```

## 📦 Build & Deploy

### Android APK

```bash
flutter build apk --release
```

### Android App Bundle

```bash
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

## 🔍 Code Generation

Aplikasi ini menggunakan code generation untuk beberapa fitur. Jalankan perintah berikut ketika ada perubahan pada:

- Auto route configuration
- Freezed models
- Injectable dependencies
- JSON serialization

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Atau untuk watch mode (development):

```bash
flutter packages pub run build_runner watch
```

## 📁 Struktur Proyek Detail

```
siscom_test_flutter/
├── android/                 # Android specific files
├── ios/                    # iOS specific files
├── lib/                    # Main source code
│   ├── application/        # Application layer
│   ├── domain/            # Domain layer
│   │   ├── category/      # Category domain
│   │   └── item/          # Item domain
│   ├── infrastructure/    # Infrastructure layer
│   │   ├── category/      # Category infrastructure
│   │   └── item/          # Item infrastructure
│   ├── presentation/      # Presentation layer
│   │   ├── components/    # Reusable UI components
│   │   ├── pages/         # Screen pages
│   │   └── router/        # Routing configuration
│   ├── common/            # Shared utilities
│   ├── injection.dart     # DI setup
│   ├── injection.config.dart
│   ├── env.dart          # Environment config
│   └── main.dart         # App entry point
├── assets/               # Static assets
│   ├── images/          # Image assets
│   ├── icons/           # Icon assets
│   ├── fonts/           # Font files
│   └── json/            # JSON files
├── test/                # Unit tests
├── pubspec.yaml         # Dependencies
├── pubspec.lock         # Locked dependencies
└── README.md           # This file
```

## 📄 Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).

## 🔄 Changelog

### Version 1.0.0

- Initial release
- Clean Architecture implementation
- BLoC state management
- Auto routing
- Dependency injection setup
- Basic UI components

---

**Note**: Dokumentasi ini akan diperbarui secara berkala sesuai dengan perkembangan aplikasi.
