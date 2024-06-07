import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:presensi/screen/dashboard_screen.dart';
import 'package:presensi/screen/login_screen.dart';
=======
import 'package:flutter_presensi/screen/dashboard_screen.dart';
import 'package:flutter_presensi/screen/login_screen.dart';
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context){

<<<<<<< HEAD
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
=======
    Future.delayed(const Duration(seconds: 3)).then((value) {  //delay selama 3 detik lalu di arahkan langsung ke hal login
      Navigator.of(context).pushAndRemoveUntil( //fungsi pushandremoveuntil untuk membuka halaman baru dan menghapus semua halaman sebelumnya dari tumpukan navigasi
          MaterialPageRoute(
            builder: (context) => const LoginScreen(), //mengarahkan ke halaman login
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
          ),
          (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
<<<<<<< HEAD
              'assets/images/logo_polbeng.png',
=======
              'assets/images/logopolbeng.png',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
              width: 128,
            ),
            const SizedBox(height: 8,),
            Text(
              'PresensiApp',
              style: GoogleFonts.manrope(
                fontSize: 34,
                color: const Color(0xFF12A3DA),
                fontWeight: FontWeight.w700,
              )  
            ),
          ],
        ),),
    );
  }
}