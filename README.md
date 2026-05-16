# 📱 Smart Health Monitoring App (Flutter)

## Project Description
This is a simple Flutter application that demonstrates multi-page navigation, data passing, and returning results between screens.

---

## Features
- 4 Pages Navigation (Dashboard → Heart Rate → Details → Feedback)
- Navigator.push() implementation
- Navigator.pop() implementation
- Data passing (BPM value)
- Returning result (Good / Bad feedback)
- Dashboard displays returned result

---

## App Flow
Dashboard → Heart Rate Page → Details Page → Feedback Page → Dashboard

---

## Pages Description

### Dashboard Page
- Starting screen of the app
- Button to navigate to Heart Rate page
- Displays feedback result returned from other pages

### Heart Rate Page
- Displays dummy heart rate (78 BPM)
- Button to navigate to Details page

### Details Page
- Receives BPM value
- Displays heart rate details
- Navigates to Feedback page

### Feedback Page
- Asks user about health condition
- Two buttons:
  - Good 
  - Bad 
- Returns result back to Dashboard

---

##  Learning Objectives
- Understand Navigator stack (push/pop)
- Build multi-page Flutter applications
- Pass data between screens
- Return data from routes

---

## Technologies Used
- Flutter
- Dart
- Material Design

---

## Author
Abdul Qahar

---

##  Note
This project is for educational purposes and demonstrates basic Flutter navigation concepts.