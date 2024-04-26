import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_presensi/screen/dashboard_screen.dart';


class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 80,),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Image.asset(
                    'assets/images/logopolbeng.png', //logo apk
                    height: 128,
                  ),
                  const SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:'Selamat Datang\ndi ',
                      style: GoogleFonts.manrope(
                        fontSize: 32,
                        color: const Color(0xFF101317),
                        fontWeight: FontWeight.w800,
                      ),
                      children: const[
                        TextSpan(
                          text: 'PresensiApp',
                          style: TextStyle(
                            color: Color(0xFF12A3DA),
                            fontWeight: FontWeight.w800
                          )
                        )
                      ]
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    'Halo, silahkan masuk untuk melanjutkan',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      color: const Color(0xFFACAFB5),
                    ),
                  ),
                  const SizedBox(height: 20,),

                  // username
                  const TextField( //untuk membuat kotak text
                    decoration: InputDecoration(
                      labelText: 'Username',
                      enabledBorder:OutlineInputBorder( //Mengatur gaya border saat teks dalam keadaan aktif/tidak dalam fokus
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      focusedBorder:OutlineInputBorder( //digunakan untuk membuat border dengan gaya outline kita text ditekan
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),


                  // Password 
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                    obscureText: true, //untuk menyembunyikan teks yang dimasukkan
                  ),
                  const SizedBox(height: 8),

                  //lupa password
                  GestureDetector(
                    onTap: (){
                      if (kDebugMode) {
                        print('lupa password tapped');
                      }
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Lupa Password?',
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          color: const Color(0xFF9B59B6),
                        ),
                      ),
                    ),
                  ),  
                  const SizedBox(height: 24),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const DashboardScreen(), //setelah login ditekan maka akan diarahkan ke halaman DashboardScreen
                        ),
                        (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0xFF12A3DA),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255), //warna text
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.manrope(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // sidik jari
                  Text (
                    'Masuk dengan sidik jari?',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      color: const Color(0xFF101317),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.fingerprint, //icon fingerprint
                          size: 48,
                          color: Colors.grey
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // coding register
                  GestureDetector(
                    onTap: () {
                      // Register Tap
                    },
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          color: const Color(0xFF101317),
                        ),
                        children: const [
                          TextSpan(text: 'Belum punya akun? '),
                          TextSpan(
                            text: 'Daftar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF9B59B6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}