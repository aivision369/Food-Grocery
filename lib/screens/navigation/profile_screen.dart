import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery/screens/register_screen.dart';
import 'package:flutter_grocery/widget/alert_dialog_two_action.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../strings.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double circleRadius = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                elevation: 6,
                margin: EdgeInsets.all(0),
                child: Container(
                  color: kPrimaryColor,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/images/avatar_man.png",
                              height: 100,
                              width: 100,
                              //scale: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "IM Vision",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Mo : 7X98XXXX88",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "250K",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        AppString.lblFollowers,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "250K",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        AppString.lblFollowing,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "300",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        AppString.lblTestMaster,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.heart,
                color: Colors.redAccent,
              ),
              title: Text(
                AppString.lblFavorites,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: Colors.redAccent,
              ),
              title: Text(
                AppString.lblLocation,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.local_shipping_outlined,
                color: Colors.redAccent,
              ),
              title: Text(
                AppString.lblShipping,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.payments_outlined,
                color: Colors.redAccent,
              ),
              title: Text(
                AppString.lblPayment,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
              },
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                ),
                title: Text(
                  AppString.lblLogout,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  var dialog = CustomAlertDialogTwoAction(
    onNegativePressed: () {},
    onPositivePressed: () {
      Get.offAll(const RegistrationScreen());
    },
    title: AppString.lblAlert,
    positiveBtnText: AppString.lblLogout,
    message: AppString.lblLogoutMsg,
    negativeBtnText: AppString.lblCancel,
  );
}
