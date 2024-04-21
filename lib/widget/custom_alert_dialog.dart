import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.message,
    required this.positiveBtnText,
    required this.onPositivePressed,
  }) : super(key: key);

  final String title;
  final String message;
  final String positiveBtnText;
  final Function onPositivePressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      actions: [
        /*FlatButton(
          onPressed: () {
            onNegativePressed();
          },
          child: Text(negativeBtnText),
          textColor: Theme.of(context).accentColor,
        ),*/
        FlatButton(
          color: kPrimaryColor,
          onPressed: () {
            Navigator.of(context).pop();
            onPositivePressed();
          },
          child: Text(
            positiveBtnText,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10),
          ),
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
  }
}
