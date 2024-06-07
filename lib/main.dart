import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:presensi/screen/splash_screen.dart';
=======
import 'package:flutter_presensi/screen/attandance_recap_screen.dart';
import 'package:flutter_presensi/screen/dashboard_screen.dart';
import 'package:flutter_presensi/screen/login_screen.dart';
import 'package:flutter_presensi/screen/splash_screen.dart';
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca

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
<<<<<<< HEAD
}
=======
}
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
