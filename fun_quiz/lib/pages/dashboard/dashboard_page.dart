import 'package:flutter/material.dart';
import 'package:fun_quiz/pages/components/animated_bottombar.dart';
import 'package:fun_quiz/pages/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      bottomNavigationBar: GetBuilder<DashBoardController>(builder: (controller) {
        return AnimatedBottomBar(
          defaultIconColor: Colors.black,
          activatedIconColor: Colors.redAccent,
          background: Colors.white,
          buttonsIcons: [Icons.home, Icons.add_box_rounded, Icons.favorite, Icons.person],
          buttonsHiddenIcons: [
            Icons.camera_alt,
            Icons.videocam,
            Icons.mic,
            Icons.music_note
          ],
          backgroundColorMiddleIcon: Colors.redAccent,
          onTapButton: (i) => controller.changeTab(value: i),
          onTapButtonHidden: (i) {
            _alertExample("You touched at button of index $i",context);
          },
        );
      },),
      body: GetBuilder<DashBoardController>(builder: (controller) {
        return controller.views[controller.index];
      },),
    );
  }
  Future<void> _alertExample(String message,context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert example'),
          content: new Container(child: new Text(message)),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
