import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Like extends StatelessWidget {
  const Like({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(
        CupertinoIcons.heart,
        color: Colors.redAccent,
        size: 24,
      ),
    );
  }
}
