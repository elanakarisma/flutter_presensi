import 'package:flutter/material.dart';
import 'package:flutter_presensi/screen/attandance_recap_screen.dart';
import 'package:flutter_presensi/screen/dashboard_screen.dart';
import 'package:flutter_presensi/screen/login_screen.dart';
import 'package:flutter_presensi/screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Presensi App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}