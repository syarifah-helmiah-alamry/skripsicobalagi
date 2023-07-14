// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      child: GridView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 300, crossAxisSpacing: 30),
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/detail-book');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 280,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/image1.png',
                      fit: BoxFit.cover,
                      height: 180,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Tere Liye')),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('(2014)'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Bumi',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Vector.png',
                            color: Colors.white,
                            width: 15,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          const Text('200'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('4,9')
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  LinearProgressIndicator(
                    value:
                        0.7, // Nilai antara 0.0 hingga 1.0 untuk menentukan persentase progress
                    backgroundColor:
                        Colors.grey, // Warna latar belakang progress bar
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xffFF735C)), // Warna progress bar
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 280,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/matahari.png',
                    fit: BoxFit.cover,
                    height: 180,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 2),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Tere Liye')),
                ),
                SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('(2015)'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bulan',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Vector.png',
                          color: Colors.white,
                          width: 15,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        const Text('200'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('4,9')
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                LinearProgressIndicator(
                  value:
                      0.7, // Nilai antara 0.0 hingga 1.0 untuk menentukan persentase progress
                  backgroundColor:
                      Colors.grey, // Warna latar belakang progress bar
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xffFF735C)), // Warna progress bar
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
