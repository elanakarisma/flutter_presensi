import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_presensi/screen/attandance_recap_screen.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              
              // nama dan departemen
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children : [
                      Image.asset(
                        'assets/images/user_profile.png',
                        height: 84,),
                      Column( 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elana Karisma',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.manrope(
                              fontSize: 20,
                              color: const Color(0xFF263238),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'IT Forensic',
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              color: const Color(0xFF263238),
                            ),
                          ),
                        ],
                      )
                    ]  
                  ),

                  // notifikasi
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
                            color: Color.fromARGB(255, 250, 0, 92),
                            borderRadius: BorderRadius.circular(15 / 2)),
                            child: Center(
                              child: Text(
                                "10",
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

              // row kehadiran dan rekap
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

                  GestureDetector( // untuk mendeteksi interaksi pengguna seperti ketukan, tekan lama, sentuhan
                    onTap: (){
                      Navigator.of(context).push( //fungsi push untuk melakukan navigasi ke halaman baru
                        MaterialPageRoute( //mengatur animasi transisi dan menentukan halaman tujuan dan mengirimkan data
                        //builder digunakan membuat tampilan halaman yang akan ditampilkan.
                          builder: (context) => const AttandanceRecapScreen(),  //memanggil AttandanceRecapScreen di dalam file attandance_recap_screen
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
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50), 
                  backgroundColor: const Color(0xFF12A3DA),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                child: Row(
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
                      style: GoogleFonts.manrope(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ), 
              const SizedBox(height: 10,),

              // card izin
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

                              // button ajukan izin
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

                  // card cuti
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

                              // button ajukan cuti
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
  
  Widget attandanceScreen() { //fungsi attandanceScreen dipanggil
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

              // file gambar
              Card(
                child: Container(
                  height: 200, 
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Ambil Gambar'),
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // button hadir
              ElevatedButton(
                onPressed: () {
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