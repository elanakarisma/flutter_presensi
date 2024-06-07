import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class AttandanceRecapScreen extends StatefulWidget{
  const AttandanceRecapScreen({super.key});

  @override
  State<AttandanceRecapScreen> createState(){
    return _AttandanceRecapSreenApp();
  }
}

class _AttandanceRecapSreenApp extends State<AttandanceRecapScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100.0,
        title: Text(
          'Rekap Absensi',
          style: GoogleFonts.manrope(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color:const Color(0xff101317),
          ),
        ),
<<<<<<< HEAD
        backgroundColor: Colors.white,
=======
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios)
        ),
      ),
<<<<<<< HEAD
=======

      
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:16.0,top:0.0,right:16.0,bottom:16.0),
          child: Column(
            children: [
              Row(
                children: [
<<<<<<< HEAD
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color (0xff3498DB), width: 1.0), // Gray border for the Card
                          borderRadius: BorderRadius.circular(10.0), // Rounded corners
=======

                  // coding jumlah izin
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color (0xff3498DB), width: 1.0), 
                          borderRadius: BorderRadius.circular(10.0),
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                        ),
                        color: const Color(0xffE5F3FC), 
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
<<<<<<< HEAD
=======

>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                              Text(
                                'Jumlah Izin',
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff101317),
                                )
                              ),
                              const SizedBox(height:10.0,),
<<<<<<< HEAD
                              Text(
                                '0',
=======

                              Text(
                                '1',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                                style: GoogleFonts.lexend(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff3085FE),
                                ),
                              )
                            ],
<<<<<<< HEAD
=======

>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                          ),
                        ),
                    )
                  ),
                  const SizedBox(width: 8.0,),
<<<<<<< HEAD
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color (0xffA3D139), width: 1.0), // Gray border for the Card
                          borderRadius: BorderRadius.circular(10.0), // Rounded corners
=======

                  // coding jumlah hadir
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color (0xffA3D139), width: 1.0), 
                          borderRadius: BorderRadius.circular(10.0), 
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                        ),
                        color: const Color(0xffEEF8D6), 
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah Hadir',
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff101317),
                                )
                              ),
                              const SizedBox(height:10.0,),
                              Text(
<<<<<<< HEAD
                                '2',
=======
                                '10',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                                style: GoogleFonts.lexend(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffA3D139),
                                ),
                              )
                            ],
                          ),
                        ),
                    )
                  )
                ],
              ),
              const SizedBox(height: 10,),
<<<<<<< HEAD
              Row(
                children: [
=======


              Row(
                children: [

                  // jumlah sakit
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color (0xff9B59B6), width: 1.0), // Gray border for the Card
                          borderRadius: BorderRadius.circular(10.0), // Rounded corners
                        ),
                        color: const Color(0xffF1DCFA), 
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah Sakit',
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff101317),
                                )
                              ),
                              const SizedBox(height:10.0,),
                              Text(
<<<<<<< HEAD
                                '0',
=======
                                '3',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                                style: GoogleFonts.lexend(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff9B59B6),
                                ),
                              )
                            ],
                          ),
                        ),
                    )
                  ),
                  const SizedBox(width: 8.0,),
<<<<<<< HEAD
=======

                  // jumlah alpa
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color (0xffE74C3C), width: 1.0), // Gray border for the Card
                          borderRadius: BorderRadius.circular(10.0), // Rounded corners
                        ),
                        color: const Color(0xffFFE5E2), 
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah Alpa',
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff101317),
                                )
                              ),
                              const SizedBox(height:10.0,),
                              Text(
<<<<<<< HEAD
                                '0',
=======
                                '2',
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
                                style: GoogleFonts.lexend(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffB33022),
                                ),
                              )
                            ],
                          ),
                        ),
                    )
                  )
                ],
              ),
<<<<<<< HEAD
=======

              // kalender
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
              TableCalendar(
                focusedDay: DateTime.now(), 
                firstDay: DateTime.utc(2010,1,1), 
                lastDay: DateTime.utc(2040,12,31),
                headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
              ),
              const SizedBox(height: 10,),
<<<<<<< HEAD
=======

              // row aktifitas dan lihat semua
>>>>>>> 669fbe4a0548be91efb3e165e3887da0f991edca
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Aktifitas',
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff101317)
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Lihat Semua',
                      style: GoogleFonts.manrope(
                        fontSize: 14,
                        color: const Color(0xff12A3DA)
                      ),
                    ),
                  )
                ],
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
