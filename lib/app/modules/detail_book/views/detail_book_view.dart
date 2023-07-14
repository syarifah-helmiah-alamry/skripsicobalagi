// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elibrary_ui/app/modules/detail_book/views/readbook_view.dart';
import 'package:elibrary_ui/app/modules/listen/views/listen_detail_view.dart';
import 'package:elibrary_ui/app/modules/shelf/views/success_rent_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/detail_book_controller.dart';

class DetailBookView extends GetView<DetailBookController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 390,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 27, 94, 32),
                        Color.fromARGB(255, 135, 221, 139),
                        Colors.white
                      ],
                    ),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Text(
                            "Book's Detail",
                            style: GoogleFonts.roboto(
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            'assets/images/heading_detail.png',
                            width: 60,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        'assets/images/image1.png',
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 12.0, bottom: 0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          blurRadius: 95, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            2.0, // Move to right 10  horizontally
                            2.0, // Move to bottom 10 Vertically
                          ),
                        ),
                      ],
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 15, bottom: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Stocks',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xffFF735C),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '25',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xffFF735C),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 1.5,
                                color: Color(0xffFF735C),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Size',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xffFF735C),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '14,88 MB',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xffFF735C),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 1.5,
                                color: Color(0xffFF735C),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Rating',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xffFF735C),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors
                                              .yellow), // Ikon bintang pertama
                                      Icon(Icons.star,
                                          color: Colors
                                              .yellow), // Ikon bintang kedua
                                      Icon(Icons.star,
                                          color: Colors
                                              .yellow), // Ikon bintang ketiga
                                      Icon(Icons.star,
                                          color: Colors
                                              .yellow), // Ikon bintang keempat
                                      Icon(Icons.star,
                                          color: Colors
                                              .yellow), // Ikon bintang kelima
                                    ],
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12, top: 0),
                  child: Container(
                    width: double.infinity,
                    child: Card(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Row(
                            children: [
                              Text(
                                'Title      :',
                                style: GoogleFonts.roboto(
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '  BUMI',
                                style: GoogleFonts.roboto(
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: double.infinity,
                          height: 2,
                          color: Color(0xffFFDBA6),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Row(
                            children: [
                              Text(
                                'Author  :',
                                style: GoogleFonts.roboto(
                                  letterSpacing: 2.5,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '  Tere Liye',
                                style: GoogleFonts.roboto(
                                  letterSpacing: 2.5,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: double.infinity,
                          height: 2,
                          color: Color(0xffFFDBA6),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Row(
                            children: [
                              Text(
                                'Pages    :',
                                style: GoogleFonts.roboto(
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '  440 Pages',
                                style: GoogleFonts.roboto(
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: double.infinity,
                          height: 2,
                          color: Color(0xffFFDBA6),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Syspopsys',
                              style: GoogleFonts.roboto(
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          width: double.infinity,
                          height: 2,
                          color: Color(0xffFFDBA6),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 14),
                          child: Text(
                            'Pada saat itu, makhluk kurus dan tinggi itu tiba-tiba hadir di dalam cermin kamar Raib.Beberapa peristiwa atau kejadian aneh itu diawali dengan kasus robohnya tower listrik yang berada di belakang sekolahnya, sampai pertemuannya dengan makhluk tidak terduga yang kemudian membawanya ke klan Bulan, yaitu dunia paralel yang kehidupan di dalamnya berdampingan dengan klan Bumi. ',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => ReadBookView());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Icon(Icons.library_books),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Read'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0), // Jarak antara tombol

                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => SuccessRent());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF735C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Icon(Icons.my_library_add_rounded),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Rent'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0), // Jarak antara tombol
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => ListenDetailView());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF14668),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Icon(Icons.headset_rounded),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Listen'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
