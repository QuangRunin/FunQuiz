import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fun_quiz/routes/app_pages.dart';
import 'package:fun_quiz/routes/app_routes.dart';
import 'package:fun_quiz/theme/theme.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance!.resamplingEnabled = true;
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(
  //       systemNavigationBarColor: Colors.black, // navigation bar color
  //       statusBarColor: Colors.white, // status bar color
  //       statusBarIconBrightness: Brightness.dark,
  //       statusBarBrightness: Brightness.light,// status bar icon color
  //       systemNavigationBarIconBrightness: Brightness.dark,// color of navigation controls
  //       systemNavigationBarDividerColor: Colors.black,
  //     )
  // );
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.SPLASH,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      theme: Themes.light,
      darkTheme: Themes.dark,
      builder: (BuildContext context, Widget? child){
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    );
  }
}

