import 'dart:async';

import 'package:elibrary_ui/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () => Get.offAndToNamed(Routes.LANDING));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffFF735C),
          // gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          // [Color(0xFFFF800B),Color(0xFFCE1010),]
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 400.0,
                  width: double.infinity,
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Column(
              children:const  [
                 CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4054B1)),
                ),
              
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
