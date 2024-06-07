import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery/screens/vegetables_screen.dart';
import 'package:flutter_grocery/widget/CAppBar.dart';
import 'package:flutter_grocery/widget/CAppBarTitle.dart';
import 'package:flutter_grocery/widget/custom_alert_dialog.dart';
import 'package:get/get.dart';

import '../../strings.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";

  CategoryScreen({Key? key}) : super(key: key);

  var dialog = CustomAlertDialog(
    onPositivePressed: () {},
    title: AppString.dialogTitle,
    positiveBtnText: AppString.btnOK,
    message: AppString.dialogDes,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBarTitle(title: AppString.lblCategories,),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _categoriesView("assets/images/fruits.png", AppString.lblFruits, () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog);
                      }),
                      SizedBox(
                        width: 8,
                      ),
                      _categoriesView(
                          "assets/images/vegetables.png", AppString.lblVegetables, () {
                        Get.toNamed(VegetablesScreen.routeName);
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _categoriesView("assets/images/diary.png", AppString.lblDiary, () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog);
                      }),
                      SizedBox(
                        width: 8,
                      ),
                      _categoriesView("assets/images/organic.png", AppString.lblOrganic,
                          () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog);
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoriesView(String imagePath, String name, VoidCallback callback) {
    return InkWell(
      onTap: () => callback(),
      child: Card(
        color: Color(0xffF3F5F7),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 120,
                height: 120,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
