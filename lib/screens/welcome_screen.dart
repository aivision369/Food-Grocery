import 'package:flutter/material.dart';
import 'package:flutter_grocery/screens/register_screen.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/welcome_bg.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 44,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 36,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        //"assets/images/app_logo.png",
                        "assets/images/grains.png",
                        color: kPrimaryDark,
                        //scale: 4.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      AppString.welcomeTitle,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      AppString.welcomeDes,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff979899)),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RegistrationScreen.routeName);
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        shape: StadiumBorder(),
                        backgroundColor: kPrimaryColor,
                      ),
                      child: const Text(AppString.btnShopNow),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
