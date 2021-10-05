import 'dart:async';

import 'package:fun_quiz/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    startTime();
    super.onInit();
  }
  startTime() {
    return new Timer(new Duration(seconds: 3), () async {
      Get.offNamed(AppRoutes.DASH_BOARDD);
    });
  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete => super.onDelete;
}