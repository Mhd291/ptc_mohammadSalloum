import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptc_mohammad_salloum/constants.dart';
import 'package:ptc_mohammad_salloum/modules/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

SplashController controller = SplashController();

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controller.checkToken(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: kPrimaryColor,
              child: Center(
                child: Image.asset("assets/images/splash.png"),
              ),
            );

          }
          Timer(const Duration(seconds: 3), () {
            if (controller.checkUser.value) {
              Get.toNamed('/onbording');
            } else {
              Get.toNamed('onbording');
            }
          });

          return Container(
            color: kPrimaryColor,
            child: Center(
              child: Image.asset("assets/images/splash.png"),
            ),
          );
        },
      ),
    );
  }
}
