// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elibrary_ui/app/modules/navbar-page/controllers/navbar_page_controller.dart';
import 'package:elibrary_ui/app/modules/shelf/views/read_view.dart';
import 'package:elibrary_ui/app/modules/shelf/views/rent_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/shelf_controller.dart';

class SuccessRent extends GetView<ShelfController> {
  @override
  Widget build(BuildContext context) {
    var navC = Get.put(NavbarPageController());

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
                      Icon(
                        Icons.arrow_back,
                        color: Color(0xffFF735C),
                        size: 30,
                      ),
                      Text(
                        'Your Rent',
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
                Image.asset('assets/images/Success.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 45),
                  child: Text(
                    "Yeay! You've successfully borrowed a book! Show this to the library staff to collect your borrowed book.",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 46,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // Atur posisi bayangan
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFF735C)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'See Your Rent Shelf',
                              style: GoogleFonts.roboto(
                                letterSpacing: 2,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_sharp,
                              size: 20,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      onPressed: () async {
                        controller.activeTabIndex.value == 1;
                        controller.tabController.animateTo(1);
                        navC.contr.index = 2;
                        Get.toNamed('/navbar-page');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
