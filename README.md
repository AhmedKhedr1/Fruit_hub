<img width="100%" alt="Fruit Hub Banner" src="https://github.com/user-attachments/assets/0301734f-f4ba-44c4-a200-f938f33ba25f" />

<h1 align="center">🍎 Fruit Hub</h1>

<p align="center">
  A cross-platform e-commerce app built with Flutter and Firebase, featuring product browsing, Google authentication, PayPal payments, and order management.
  Built with Clean Architecture and Cubit for scalable, maintainable code.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=flat&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Bloc-State%20Management-blue?style=flat"/>
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=flat&logo=firebase&logoColor=black"/>
  <img src="https://img.shields.io/badge/Clean%20Architecture-000?style=flat"/>
</p>

---

## 📸 Screenshots

### 🔐 Authentication
![Authentication](https://github.com/user-attachments/assets/02ffca90-306a-47d0-a7b8-032dbbeb0b82)

### 🏠 Home & Products
![Home](https://github.com/user-attachments/assets/a7a5baec-0441-45c7-9cdc-ac304e7c11c3)

### 🛒 Cart & Checkout
![Checkout](https://github.com/user-attachments/assets/d80c516f-2dbf-4dfc-b732-6187ef5c348b)

## ✨ Features

<!-- تحقق: عدّل القائمة حسب اللي موجود فعلاً في التطبيق -->
- 🚀 Onboarding screens بتعرّف المستخدم بالتطبيق
- 🔐 تسجيل الدخول والتسجيل بـ **Email** و **Google**
- 🛍️ عرض المنتجات من **Cloud Firestore**
- 🛒 سلة مشتريات وإدارة الكميات
- 💳 دفع إلكتروني عن طريق **PayPal**
- ⏳ Skeleton loading أثناء تحميل البيانات
- 🌍 دعم العربي والإنجليزي (Localization) بخط **Cairo**
- 🧭 Navigation منظم باستخدام **GoRouter**

## 🏗️ Architecture

المشروع مبني بـ **Clean Architecture** مع **Feature-first structure**، وكل Feature مقسم لثلاث طبقات:

- **Data:** Models و Data Sources و Repository Implementations
- **Domain:** Entities و Repository Contracts
- **Presentation:** Cubits و Views و Widgets

```
lib/
├── Core/                  # Shared code across features
│   ├── cubits/
│   ├── entities/
│   ├── errors/
│   ├── helper/
│   ├── models/
│   ├── repos/
│   ├── services/
│   ├── utils/
│   └── widgets/
├── Features/
│   ├── Auth/              # data / domain / presentation
│   ├── Home/              # data / domain / presentation
│   ├── cart/              # data / domain / presentation
│   ├── Checkout/          # data / domain / presentation
│   ├── onboarding/
│   ├── ProductDetails/
│   ├── Profile/
│   └── Splash/
├── generated/             # Generated localization files
├── l10n/                  # ARB files (Arabic / English)
├── Constant.dart
├── firebase_options.dart
└── main.dart
```

- **Error handling:** `dartz` (`Either<Failure, T>`)
- **Dependency Injection:** `get_it`
- **State Management:** `flutter_bloc` (Cubit)
- **Navigation:** `go_router`

## 🛠️ Tech Stack

| الفئة | التقنية |
|------|---------|
| Framework | Flutter (Dart SDK ^3.6) |
| State Management | flutter_bloc |
| Dependency Injection | get_it |
| Navigation | go_router |
| Backend | Firebase Auth, Cloud Firestore |
| Social Login | google_sign_in |
| Payment | flutter_paypal_payment |
| Local Storage | shared_preferences |
| Functional Programming | dartz, equatable |
| UI | flutter_svg, skeletonizer, dots_indicator |
| Localization | flutter_localizations, flutter_intl |

## 📫 Contact

**Ahmed Khedr** • Flutter Developer

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmed-khedr-62b8b3315)
[![Email](https://img.shields.io/badge/Email-D14836?style=flat&logo=gmail&logoColor=white)](mailto:ahmedkhedrx1@gmail.com)
