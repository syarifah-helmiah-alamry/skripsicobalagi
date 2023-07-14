// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../controllers/listen_controller.dart';

class ListenDetailView extends GetView<ListenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
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
                    const Text(
                      'Listen',
                      style: TextStyle(
                        letterSpacing: 3.0,
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
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset('assets/images/image1.png'),
                        SizedBox(height: 20.0),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(PhosphorIcons.speakerLow,
                                      color: Color(0xffFF735C)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 38.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'BUMI',
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 2.0,
                                            fontSize: 32,
                                            color: Colors.black),
                                      ),
                                      SizedBox(height: 10.0),
                                      Text(
                                        'Tere Liye',
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2.0,
                                            fontSize: 20,
                                            color: Colors.black),
                                      ),
                                      SizedBox(height: 30.0),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shuffle,
                                          color: Color(0xffFF735C)),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.repeat,
                                          color: Color(0xffFF735C)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '00:00',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xffFF735C)),
                                ),
                                Text(
                                  '04:00',
                                  style: GoogleFonts.roboto(
                                      color: Color(0xffFF735C)),
                                ),
                              ],
                            ),
                          ),
                          Slider(
                            activeColor: Color(0xffFF735C),
                            onChanged: (double value) {},
                            value: 0.2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.skip_previous,
                                    color: Color(0xffFF735C), size: 40),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10.0),
                                child: IconButton(
                                  onPressed: () {},
                                  iconSize: 40.0,
                                  icon: Icon(
                                    Icons.pause,
                                    color: Color(0xffFF735C),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.skip_next,
                                  color: Color(0xffFF735C),
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
