import 'package:flutter/material.dart';
import 'pages/landing.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/home.dart';
import 'pages/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B. Algo FX Experts',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
        '/forgot-password': (context) => const ForgotPasswordPage(), // <-- Route added
      },
    );
  }
}
