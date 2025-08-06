# 📱 YOLOv8 Object Detection Flutter App

This is a mobile application built with **Flutter** that connects to a YOLOv8-based **Flask API** for performing real-time object detection on images. Users can login, select or capture an image, and view detected objects with their confidence scores.

---

## 🚀 Features

- 🔐 **Login Authentication** (with hardcoded credentials)
- 📷 **Image Input** via Camera or Gallery
- 🧠 **Object Detection** using YOLOv8 model (served via Flask)
- 📋 **Detection Results** with object name and confidence
- ✅ Clean, modern, and mobile-responsive UI

---

## 🛠 Tech Stack

| Frontend        | Backend        |
|----------------|----------------|
| Flutter (Dart) | Flask + YOLOv8 |
| Image Picker   | Python         |
| REST API       | Ultralytics    |

---

## 📦 Hardcoded Login Credentials

```bash
Email:    test@example.com
Password: 123456
```



🔹 Flutter App
- Clone this repo

- Install dependencies
  - flutter pub get
 
- Run the app on a real device (for camera access):
  - flutter run

 
 
 🔹Folder Structure 

  lib/
├── Screens/
│   ├── login_screen.dart
│   └── detection_screen.dart
├── Services/
│   └── api_service.dart
├── Widgets/
│   └── detection_result.dart
└── main.dart




👨‍🎓 Author
Ashutosh Dhodad
📧 ashutoshdhodad12@gmail.com

