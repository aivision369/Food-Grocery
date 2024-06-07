import 'package:flutter/material.dart';
import 'package:flutter_grocery/strings.dart';
import 'package:get/get.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(

      preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        title: Text(
          "\n$title",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
            //Navigator.pop(context);
          },
          child: SizedBox(
            height: 80,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/back_icon.png",
                scale: 2.2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
