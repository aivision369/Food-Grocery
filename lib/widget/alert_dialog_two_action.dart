import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAlertDialogTwoAction extends StatelessWidget {
  const CustomAlertDialogTwoAction({
    Key? key,
    required this.title,
    required this.message,
    required this.positiveBtnText,
    required this.negativeBtnText,
    required this.onPositivePressed,
    required this.onNegativePressed,
  }) : super(key: key);

  final String title;
  final String message;
  final String positiveBtnText;
  final String negativeBtnText;
  final Function onPositivePressed;
  final Function onNegativePressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      actions: [
        FlatButton(
          color: Colors.redAccent,
          onPressed: () {
            Navigator.of(context).pop();
            onNegativePressed();
          },
          child: Text(
            negativeBtnText,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton(
          color: kPrimaryColor,
          onPressed: () {
            Navigator.of(context).pop();
            onPositivePressed();
          },
          child: Text(
            positiveBtnText,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
  }
}
