import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery/widget/custom_alert_dialog.dart';
import 'package:flutter_grocery/widget/home_slider.dart';
import 'package:flutter_grocery/widget/vegetable_card.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../strings.dart';
import '../dashboard_screen.dart';
import '../vegetable_detail_screen.dart';
import '../vegetables_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/Home";

  HomeScreen({Key? key, this.tabIndex}) : super(key: key);

  Function(int index)? tabIndex;

  var dialog = CustomAlertDialog(
    onPositivePressed: () {},
    title: AppString.dialogTitle,
    positiveBtnText: AppString.btnOK,
    message: AppString.dialogDes,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/images/avatar_man.png",
                      scale: 3.6,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getTitleMessage(),
                            style: TextStyle(
                                color: Color(0xff979899),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            AppString.lblUser,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                          color: Color(0xffF3F5F7),
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.location,
                            color: kPrimaryColor,
                            size: 16,
                          ),
                          Text(
                            AppString.lblMyHome,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            CupertinoIcons.chevron_down,
                            color: kPrimaryColor,
                            size: 12,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF3F5F7),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: AppString.hintSearchCate,
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xff979899),
                          fontWeight: FontWeight.w500),
                      contentPadding: EdgeInsets.all(16),
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: kPrimaryColor,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: HomeSlider(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _seeAllView(context, AppString.lblCategories, () {
                    if (tabIndex != null) {
                      tabIndex!(1);
                      //state._changePage((state._currentIndex + 1) % state.widget.pages.length);
                      //navigationPosition!(1);
                    }
                  }),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      _categoriesView(
                          "assets/images/fruits.png", AppString.lblFruits, () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog);
                      }),
                      _categoriesView("assets/images/vegetables.png",
                          AppString.lblVegetables, () {
                            Get.toNamed(VegetablesScreen.routeName);
                      }),
                      _categoriesView(
                          "assets/images/diary.png", AppString.lblDiary, () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog);
                      }),
                      _categoriesView(
                          "assets/images/organic.png", AppString.lblOrganic,
                          () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog);
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  _seeAllView(context, AppString.lblBestSelling, () {
                    Get.toNamed(VegetablesScreen.routeName);
                    //Navigator.pushNamed(context, VegetablesScreen.routeName);
                  }),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: VegetableCardWidget(
                            imagePath: "assets/images/bell_pepper_red.png",
                            name: "Bell Pepper Red",
                            price: "1kg, 40 \u20B9",
                            onClick: () {
                              Get.toNamed(VegetableDetailScreen.routeName);
                            }),
                      ),
                      Expanded(
                        child: VegetableCardWidget(
                            imagePath: "assets/images/carrots.png",
                            name: "Organic Carrots",
                            price: "1kg, 50 \u20B9",
                            onClick: () {
                              Get.toNamed(VegetableDetailScreen.routeName);
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getTitleMessage() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    String greetingMessage = '';
    if (hour >= 0 && hour < 12) {
      greetingMessage = AppString.messageG;
    } else if (hour >= 12 && hour < 18) {
      greetingMessage = AppString.messageA;
    } else {
      greetingMessage = AppString.messageE;
    }
    return greetingMessage;
  }

  Widget _seeAllView(
      BuildContext context, String name, VoidCallback onClickCallback) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: () {
            onClickCallback();
            //Navigator.pushNamed(context, VegetablesScreen.routeName);
          },
          child: Text(
            AppString.lblSeeAll,
            style: TextStyle(
                fontSize: 14,
                color: kPrimaryColor,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }

  Widget _categoriesView(String imagePath, String name, VoidCallback onTap) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffF3F5F7),
              radius: 32,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  imagePath,
                  scale: 4.0,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
