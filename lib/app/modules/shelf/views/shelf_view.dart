// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elibrary_ui/app/modules/shelf/views/read_view.dart';
import 'package:elibrary_ui/app/modules/shelf/views/rent_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/shelf_controller.dart';

class ShelfView extends GetView<ShelfController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Shelf',
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
                TabBar(
                  controller: controller.tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xffFFDBA6),
                  ),
                  tabs: [
                    Obx(() => Tab(
                          child: Container(
                            width: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Read',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: controller.activeTabIndex.value == 0
                                      ? Color(0xffFF735C)
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        )),
                    Obx(() => Tab(
                          child: Container(
                            width: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rent',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: controller.activeTabIndex.value == 1
                                      ? Color(0xffFF735C)
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      // Widget untuk tab 'Read'
                      ReadContent(),
                      // Widget untuk tab 'Rent'
                      RentContent(),
                    ],
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
