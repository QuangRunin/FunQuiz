import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  List<Widget> views = [
    new Container(child: Center(child: new Text("MENU SCREEN EXAMPLE", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)))),
    new Container(child: Center(child: new Text("SEARCH SCREEN EXAMPLE", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)))),
    new Container(child: Center(child: new Text("FAVORITE SCREEN EXAMPLE", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)))),
    new Container(child: Center(child: new Text("PROFILE SCREEN EXAMPLE", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold))))
  ];

  int index = 0;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  void changeTab({value}){
    index = value;
    update();
  }
}