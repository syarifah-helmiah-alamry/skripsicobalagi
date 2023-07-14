// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elibrary_ui/app/modules/detail_book/controllers/detail_book_controller.dart';
import 'package:elibrary_ui/app/modules/shelf/views/read_view.dart';
import 'package:elibrary_ui/app/modules/shelf/views/rent_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadBookView extends GetView<DetailBookController> {
  @override
  Widget build(BuildContext context) {
    final int currentPage = 5;
    final int totalPages = 10;

    void goToPreviousChapter() {
      // Logika untuk berpindah ke chapter sebelumnya
    }

    void goToNextChapter() {
      // Logika untuk berpindah ke chapter selanjutnya
    }
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: DefaultTabController(
          length: 2,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xffFF735C),
                          size: 30,
                        ),
                      ),
                      Text(
                        'Dear J',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 22.0,
                          color: Color(0xffFF735C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Image.asset(
                        'assets/images/heading_shelf.png',
                        width: 80,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Chapter 1',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 38),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed uis nostrud exercitation ullamco  laboris nisi ut aliquip ex commodo consequat. Duis aute irure dolor in reprehenderit voluptate velit esse cillum  dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed uis nostrud exercitation ullamco  laboris nisi ut aliquip ex commodo consequat. Duis aute irure dolor in reprehenderit voluptate velit esse cillum  dolore eu fugiat nulla pariatur.",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal, fontSize: 14),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed uis nostrud exercitation ullamco  laboris nisi ut aliquip ex commodo consequat. Duis aute irure dolor in reprehenderit voluptate velit esse cillum  dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed uis nostrud exercitation ullamco  laboris nisi ut aliquip ex commodo consequat. Duis aute irure dolor in reprehenderit voluptate velit esse cillum  dolore eu fugiat nulla pariatur.",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal, fontSize: 14),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarView(
        currentPage: currentPage,
        totalPages: totalPages,
        onPreviousChapter: goToPreviousChapter,
        onNextChapter: goToNextChapter,
      ),
    );
  }
}

class BottomNavBarView extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function() onPreviousChapter;
  final Function() onNextChapter;

  BottomNavBarView({
    required this.currentPage,
    required this.totalPages,
    required this.onPreviousChapter,
    required this.onNextChapter,
  });

  @override
  Widget build(BuildContext context) {
    double progress = currentPage / totalPages;

    return Container(
      height: 60.0,
      color: Color.fromARGB(255, 44, 44, 44),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFF735C)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '<  Previous Chapter',
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
                Text(
                  'Next Chapter  >',
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
