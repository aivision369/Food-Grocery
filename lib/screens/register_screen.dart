import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../strings.dart';
import 'dashboard_screen.dart';

class RegistrationScreen extends StatelessWidget {
  static String routeName = "/RegistrationScreen";

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => Get.back(),
            child: Image.asset(
              "assets/images/back_icon.png",
              scale: 2.2,
            )),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffEBF8EE),
                    radius: 36,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        "assets/images/grains.png",
                        color: kPrimaryDark,
                        //scale: 4.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      AppString.loginLbl,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      AppString.loginDes,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff979899)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: TextField(
                      textAlign: TextAlign.center,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppString.mobileHint,
                          hintStyle: TextStyle(
                              fontSize: 24,
                              color: Color(0xffE0E0E0),
                              fontWeight: FontWeight.bold),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          prefix: Text(
                            AppString.countryCode,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(DashboardScreen());
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        shape: StadiumBorder(),
                        backgroundColor: kPrimaryColor),
                    child: Text(AppString.btnContinue),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text:
                            AppString.termsStatement1,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA9A9AA),
                            fontSize: 12),
                        children: [
                          TextSpan(
                              text: AppString.termsStatement2,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5D5FEF)))
                        ]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
