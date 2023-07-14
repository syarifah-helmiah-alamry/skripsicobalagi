import 'package:elibrary_ui/app/modules/listen/views/listen_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/listen_controller.dart';

class ListenView extends GetView<ListenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 80,
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
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    height: 180,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ListenDetailView());
                          },
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/listen1.png',
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/listen2.png',
                            height: 180,
                          ),
                        ),
                      ],
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
