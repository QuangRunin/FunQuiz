import 'package:fun_quiz/pages/dashboard/dashboard_binding.dart';
import 'package:fun_quiz/pages/dashboard/dashboard_page.dart';
import 'package:fun_quiz/pages/splash/splash_binding.dart';
import 'package:fun_quiz/pages/splash/splash_page.dart';
import 'package:fun_quiz/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page:() => SplashPage(),
      binding: SplashBinding(),
      transition: Transition.topLevel,
      transitionDuration: Duration(milliseconds: 500)
    ),
    GetPage(
      name: AppRoutes.DASH_BOARDD,
      page:() => DashBoardPage(),
      binding: DashBoardBinding(),
      transition: Transition.topLevel,
      transitionDuration: Duration(milliseconds: 500)
    ),
  ];
}