import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:presensi/model/presensi.dart';
import 'package:presensi/screen/attandance_recap_screen.dart';
import 'package:presensi/utils/mix.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class DashboardScreen extends StatefulWidget{
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // late String nik;
  // late String token;
  // late String name;
  // late String dept;
  // String imgUrl="";

  String nik="", token = "", name ="", dept ="", imgUrl="";
  late Future<Presensi> futurePresensi;

  //get user data
  Future<void> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    String? nik = prefs.getString('nik') ?? "";
    String? token = prefs.getString('jwt')?? "";
    String? name = prefs.getString('name')?? "";
    String? dept = prefs.getString('dept')?? "";
    String? imgUrl = prefs.getString('imgProfil')?? "not found";
    
    setState(() {
      this.nik = nik;
      this.token = token;
      this.name = name;
      this.dept = dept;
      this.imgUrl = imgUrl;
    });
  }

  //get presence info
  Future<Presensi> fetchPresensi(String nik, String tanggal) async {
    String url = 'https://presensi.spilme.id/presence?nik=$nik&tanggal=$tanggal';
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token'
      }
    );
  
    if (response.statusCode == 200) {
      return Presensi.fromJson(jsonDecode(response.body));
    } else {
      //jika data tidak tersedia, buat data default
      return Presensi(
        id: 0, 
        nik: this.nik,
        tanggal: getTodayDate(),
        jamMasuk: "--:--",
        jamKeluar: '--:--',
        lokasiMasuk: '-',
        lokasiKeluar: '-',
        status: '-',
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
=======
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_presensi/screen/attandance_recap_screen.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
<<<<<<< HEAD
              //Greetings
=======
              
              // nama dan departemen
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children : [
<<<<<<< HEAD
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          imgUrl,
                          height: 84,
                          fit: BoxFit.cover
                        )
                      ),
                      const SizedBox(width:10),
=======
                      Image.asset(
                        'assets/images/user_profile.png',
                        height: 84,),
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                      Column( 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
<<<<<<< HEAD
                            name,
=======
                            'Elana Karisma',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                            textAlign: TextAlign.left,
                            style: GoogleFonts.manrope(
                              fontSize: 20,
                              color: const Color(0xFF263238),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
<<<<<<< HEAD
                            dept,
=======
                            'IT Forensic',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              color: const Color(0xFF263238),
                            ),
                          ),
                        ],
                      )
                    ]  
                  ),
<<<<<<< HEAD
=======

                  // notifikasi
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                  Stack(
                    children: [
                      IconButton(
                        onPressed: (){

                        }, 
                        icon: const Icon(Icons.notifications_none),
                        iconSize: 32,
                        color: Colors.black,
                      ),
                      Positioned(
                        right: 10,
                        top: 8,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
<<<<<<< HEAD
                            color: const Color(0xFFEF6497),
                            borderRadius: BorderRadius.circular(15 / 2)),
                            child: Center(
                              child: Text(
                                "2",
=======
                            color: Color.fromARGB(255, 250, 0, 92),
                            borderRadius: BorderRadius.circular(15 / 2)),
                            child: Center(
                              child: Text(
                                "10",
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                                style: GoogleFonts.mPlus1p(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800
                                ),
                              )
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
<<<<<<< HEAD
=======

              // row kehadiran dan rekap
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kehadiran hari ini',
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      color: const Color(0xFF101317),
                      fontWeight: FontWeight.bold
                    ),
                  ),
<<<<<<< HEAD
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AttandanceRecapScreen(),
=======

                  GestureDetector( // untuk mendeteksi interaksi pengguna seperti ketukan, tekan lama, sentuhan
                    onTap: (){
                      Navigator.of(context).push( //fungsi push untuk melakukan navigasi ke halaman baru
                        MaterialPageRoute( //mengatur animasi transisi dan menentukan halaman tujuan dan mengirimkan data
                        //builder digunakan membuat tampilan halaman yang akan ditampilkan.
                          builder: (context) => const AttandanceRecapScreen(),  //memanggil AttandanceRecapScreen di dalam file attandance_recap_screen
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                        ),
                      );
                    },
                    child: Text(
                      'Rekap Absensi',
                      style: GoogleFonts.manrope(
                        fontSize: 14,
                        color: const Color(0xFF12A3DA),
                      ),),
                  )
                ],
              ),
              const SizedBox(height: 10,),
<<<<<<< HEAD
              FutureBuilder<Presensi>(
                future:fetchPresensi(nik, getTodayDate()),
                builder: (context, snapshot) {
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError){
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData){
                    final data = snapshot.data;
                    return Row(
                      children: [
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color.fromARGB(255, 219, 226, 228), width: 1.0), // Gray border for the Card
                              borderRadius: BorderRadius.circular(10.0), // Rounded corners
                            ),
                            color: Colors.white, 
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Container(
                                      width: 48,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(35, 48, 134, 254),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: SvgPicture.asset('assets/svgs/login_outlined.svg'),
                                    ),
                                    const SizedBox(width: 10,),
                                    Text(
                                      'Masuk',
                                      style: GoogleFonts.lexend(
                                        fontSize: 16,
                                        color: const Color(0xFF101317),
                                      ),
                                      textAlign: TextAlign.left,)
                                  ],),
                                  const SizedBox(height: 10),
                                  Text(
                                    data?.jamMasuk ?? '--:--',
                                    style: GoogleFonts.lexend(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF101317),
                                    ),),
                                  Text(
                                    getPresenceEntryStatus(data?.jamMasuk??'-'),
                                    style: GoogleFonts.lexend(
                                      fontSize: 16,
                                      color:const Color(0xFF101317),
                                    ),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Color.fromARGB(255, 219, 226, 228), width: 1.0), // Gray border for the Card
                              borderRadius: BorderRadius.circular(10.0), // Rounded corners
                            ),
                            color: Colors.white, // White background color for the Card
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Container(
                                      width: 48,
                                      height: 48,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(35, 48, 134, 254),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: SvgPicture.asset('assets/svgs/logout_outlined.svg',),
                                    ),
                                    const SizedBox(width: 10,),
                                    Text(
                                      'Keluar',
                                      style: GoogleFonts.lexend(
                                        fontSize: 16,
                                        color: const Color(0xFF101317),
                                      ),
                                      textAlign: TextAlign.left,)
                                  ],),
                                  const SizedBox(height: 10),
                                  Text(
                                    data?.jamKeluar??'--:--',
                                    style: GoogleFonts.lexend(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF101317),
                                    ),),
                                  Text(
                                    getPresenceExitStatus(data?.jamKeluar??'-'),
                                    style: GoogleFonts.lexend(
                                      fontSize: 16,
                                      color:const Color(0xFF101317),
                                    ),),
                                ],
                              ),
                            ),
                      
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Center(child: Text('No data available'));
                  }
                },
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  showModalBottomSheet(
                    context: context, 
                    isScrollControlled: true,
                    builder: (context){
                      return attandanceScreen();
=======

              // row kehadiran
              Row(
                children: [

                  // coding kehadiran masuk
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color.fromARGB(255, 219, 226, 228), width: 1.0), 
                        borderRadius: BorderRadius.circular(10.0), 
                      ),
                      color: Colors.white, 
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(35, 48, 134, 254),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: SvgPicture.asset('assets/svg/login_outlined.svg'),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                'Masuk',
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  color: const Color(0xFF101317),
                                ),
                                textAlign: TextAlign.left,)
                            ],),
                            const SizedBox(height: 10),
                            Text(
                              '07:00',
                              style: GoogleFonts.lexend(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF101317),
                              ),),
                            Text(
                              'Tepat Waktu',
                              style: GoogleFonts.lexend(
                                fontSize: 16,
                                color:const Color(0xFF101317),
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),

                  // coding kehadiran keluar
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color.fromARGB(255, 219, 226, 228), width: 1.0), // Gray border for the Card
                        borderRadius: BorderRadius.circular(10.0), 
                      ),
                      color: Colors.white, 
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(35, 48, 134, 254),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: SvgPicture.asset('assets/svg/logout_outlined.svg',),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                'Keluar',
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  color: const Color(0xFF101317),
                                ),
                                textAlign: TextAlign.left,)
                            ],),
                            const SizedBox(height: 10),
                            Text(
                              '--:--',
                              style: GoogleFonts.lexend(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF101317),
                              ),),
                            Text(
                              'Pulang',
                              style: GoogleFonts.lexend(
                                fontSize: 16,
                                color:const Color(0xFF101317),
                              ),),
                          ],
                        ),
                      ),
                
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),

              // button untuk tekan presensi keluar
              ElevatedButton(
                onPressed: (){
                  showModalBottomSheet( //fungsi untuk membuat pop up dari presensi masuk
                    context: context, 
                    isScrollControlled: true,
                    builder: (context){
                      return attandanceScreen(); //fungsi yang mengembalikan widget untuk menampilkan antarmuka pengguna (UI)
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
<<<<<<< HEAD
                  minimumSize: const Size(double.infinity, 50), // width and height
=======
                  minimumSize: const Size(double.infinity, 50), 
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                  backgroundColor: const Color(0xFF12A3DA),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                child: Row(
<<<<<<< HEAD
                  mainAxisSize: MainAxisSize.min, // Use min to prevent the Row from expanding
                  children: [
                    const Icon(
                      Icons.circle_outlined, // This is the icon you want before the text
                      color: Colors.white, // Icon color
                      size: 24.0, // Icon size
                    ),
                    const SizedBox(width: 8), // Spacing between icon and text
                    Text(
                      'Tekan untuk presensi keluar',
=======
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    const Icon(
                      Icons.circle_outlined, 
                      color: Colors.white, 
                      size: 24.0, 
                    ),
                    const SizedBox(width: 8), 
                    Text(
                      'Tekan untuk presensi',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                      style: GoogleFonts.manrope(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ), 
              const SizedBox(height: 10,),
<<<<<<< HEAD
=======

              // card izin
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
              Row(
                children: [
                  Expanded(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/bg_izin.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Izin Absen',
                                style: GoogleFonts.manrope(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                'Isi form untuk mengajukan izin absensi',
                                style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
<<<<<<< HEAD
=======

                              // button ajukan izin
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: const Color(0xff313638),
                                  minimumSize: const Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ),
                                child: Text(
                                  'Ajukan izin',
                                  style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
<<<<<<< HEAD
=======

                  // card cuti
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                  Expanded(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/bg_cuti.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Izin Cuti',
                                style: GoogleFonts.manrope(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                'Isi form untuk mengajukan cuti',
                                style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 40),
<<<<<<< HEAD
=======

                              // button ajukan cuti
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: const Color(0xff9B59B6),
                                  minimumSize: const Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ),
                                child: Text(
                                  'Ajukan Cuti',
                                  style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
<<<<<<< HEAD

  Widget attandanceScreen() {
=======
  
  Widget attandanceScreen() { //fungsi attandanceScreen dipanggil
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Presensi Masuk',
                style: GoogleFonts.manrope(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Color(0xffE74C3C),
                    size: 32, 
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanggal Masuk',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color:const Color(0xff111111),
                        )
                      ),
                      Text(
                        'Selasa, 23 Agustus 2023',
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          color:const Color(0xff707070),
                        )
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Icon(
                    Icons.av_timer_outlined,
                    color: Color(0xffE74C3C),
                    size: 32, 
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jam Masuk',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color:const Color(0xff111111),
                        )
                      ),
                      Text(
                        '07:30:23',
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          color:const Color(0xff707070),
                        )
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40,),
              Text(
                'Foto selfie di area kantor',
                style: GoogleFonts.manrope(
                  fontSize: 16,
                  color: const Color (0xff707070),
                ),
              ),
              const SizedBox(height: 8),
<<<<<<< HEAD
              Card(
                child: Container(
                  height: 200, // Set your desired height
=======

              // file gambar
              Card(
                child: Container(
                  height: 200, 
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Ambil Gambar'),
                    onPressed: () {
<<<<<<< HEAD
                      // Implement your image picking logic
=======
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
<<<<<<< HEAD
              ElevatedButton(
                onPressed: () {
                  // Implement your check-in logic
=======

              // button hadir
              ElevatedButton(
                onPressed: () {
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  'Hadir',
                  style: GoogleFonts.manrope(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
      ),
      ]
    );
  }
}