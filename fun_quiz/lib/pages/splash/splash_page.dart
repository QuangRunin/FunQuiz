import 'package:flutter/material.dart';
import 'package:fun_quiz/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<SplashController>(builder: (controller) {
          return Lottie.asset(
              "assets/lottie/rocket_splash.json",
              width: 250,
              height: 250
          );
        },)
      ),
    );
  }
}
