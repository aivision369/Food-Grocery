import 'package:flutter/material.dart';
import 'package:flutter_grocery/screens/welcome_screen.dart';

import '../constants.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 48,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/grains.png",
              color: kPrimaryDark,
              //scale: 4.0,
            ),
          ),
        ),
      ),
    );
  }
}
