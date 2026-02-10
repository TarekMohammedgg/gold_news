<div align="center">
  <img src="assets/images/app_logo.png" alt="Gold News Logo" width="200"/>
</div>

# 🪙 Gold News

A modern Flutter application for tracking gold and silver prices and news updates.

## 📱 About

Gold News is a mobile application that provides real-time information about gold and silver markets. Built with Flutter, it offers a clean and intuitive interface for users to stay updated on precious metal prices and related news.

## ✨ Features

- 📊 Real-time gold and silver price tracking
- 📰 Latest news and market updates
- 🎨 Modern dark-themed UI
- 🚀 Fast and responsive performance

## 🛠️ Tech Stack

- **Framework:** Flutter 3.8.1+
- **State Management:** flutter_bloc (9.1.1)
- **HTTP Client:** Dio (5.9.1)
- **Language:** Dart

## 📂 Project Structure

```
lib/
├── core/
│   ├── constants/       # App-wide constants (colors, strings, styles)
│   ├── networking/      # API configuration and HTTP client
│   ├── presentation/    # Shared screens
│   ├── routing/         # Navigation and route management
│   └── widgets/         # Reusable UI components
├── features/            # Feature modules (organized by domain)
└── main.dart           # Application entry point
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.8.1 or higher)
- Dart SDK (3.8.1 or higher)
- Android Studio / VS Code
- An Android or iOS device/emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/TarekMohammedgg/gold_news.git
   cd gold_news
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 🎨 Design

The app features a modern dark theme with:
- Gold accent color (#EEC430)
- Silver accent color (#C0C0C0)
- Dark background (#0A0A0A)
- Card-based UI components

## 📦 Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| flutter_bloc | ^9.1.1 | State management |
| dio | ^5.9.1 | HTTP networking |
| cupertino_icons | ^1.0.8 | iOS-style icons |

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

**Tarek Mohammed**
- GitHub: [@TarekMohammedgg](https://github.com/TarekMohammedgg)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- All contributors and supporters of this project

---

Made with ❤️ using Flutter
