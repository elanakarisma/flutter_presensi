import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:presensi/screen/dashboard_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState(){
    return _LoginScreen();
  }
}


class _LoginScreen extends State<LoginScreen> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  Future<void> _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your username and password')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    const url = 'https://presensi.spilme.id/login'; // Replace with your server address
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );
    if (kDebugMode) {
      print(response.statusCode);
    }
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final nik = responseBody['nik'];
      final token = responseBody['token'];
      final name = responseBody['nama'];
      final dept = responseBody['departemen'];
      final imgUrl = responseBody['imgUrl'];

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt', token);
      await prefs.setString('name', name);
      await prefs.setString('dept', dept);
      await prefs.setString('imgProfil', imgUrl);
      await prefs.setString('nik', nik);

      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const DashboardScreen()),
        (route) => false,
      );
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
=======
import 'package:flutter_presensi/screen/dashboard_screen.dart';


class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
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
<<<<<<< HEAD
                  //Logo aplikasi
                  Image.asset(
                    'assets/images/logo_polbeng.png',
=======
                  Image.asset(
                    'assets/images/logopolbeng.png', //logo apk
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
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
<<<<<<< HEAD
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      enabledBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      focusedBorder:OutlineInputBorder(
=======

                  // username
                  const TextField( //untuk membuat kotak text
                    decoration: InputDecoration(
                      labelText: 'Username',
                      enabledBorder:OutlineInputBorder( //Mengatur gaya border saat teks dalam keadaan aktif/tidak dalam fokus
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                      focusedBorder:OutlineInputBorder( //digunakan untuk membuat border dengan gaya outline kita text ditekan
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xFF12A3DA)),
                      ),
                    ),
<<<<<<< HEAD
                    //keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),
                  // Password TextField
                   TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
=======
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),


                  // Password 
                  const TextField(
                    decoration: InputDecoration(
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
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
<<<<<<< HEAD
                    obscureText: true,
                  ),
                  const SizedBox(height: 8),
                  //forgot password
=======
                    obscureText: true, //untuk menyembunyikan teks yang dimasukkan
                  ),
                  const SizedBox(height: 8),

                  //lupa password
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
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
<<<<<<< HEAD
                  // Login Button
                    _isLoading 
                    ? const CircularProgressIndicator()
                  // Login Button
                  : ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50), // width and height
                      backgroundColor: const Color(0xFF12A3DA),
                      foregroundColor: Colors.white,
=======

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
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
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
<<<<<<< HEAD
=======

                  // sidik jari
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                  Text (
                    'Masuk dengan sidik jari?',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      color: const Color(0xFF101317),
                    ),
                  ),
<<<<<<< HEAD
                  TextButton(
                    onPressed: () {
                      // Fingerprint Tap
=======

                  TextButton(
                    onPressed: () {
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
<<<<<<< HEAD
                          Icons.fingerprint, 
=======
                          Icons.fingerprint, //icon fingerprint
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                          size: 48,
                          color: Colors.grey
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
<<<<<<< HEAD
                  // Register New Account
=======

                  // coding register
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
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
<<<<<<< HEAD
}

=======
}
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
