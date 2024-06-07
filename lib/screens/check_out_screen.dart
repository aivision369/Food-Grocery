import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery/widget/CAppBar.dart';

import '../constants.dart';
import '../strings.dart';

class CheckOutScreen extends StatefulWidget {
  static String routeName = "/checkout";

  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int selectedIndex = 0;
  bool scrollEnabled = true;

  @override
  Widget build(BuildContext context) {
    List paymentImagePath = [
      "assets/images/pay_apple.png",
      "assets/images/pay_google.png",
      "assets/images/pay_mastercard.png",
      "assets/images/pay_paypal.png",
      "assets/images/pay_visa.png"
    ];

    return Scaffold(
      appBar: CAppBar(title: AppString.lblCheckOut,),
      /*AppBar(
        title: Text(
          AppString.lblCheckOut,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.0,
          ),
        ),
      ),*/
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              _leftRightLabel(AppString.lblYourItems, AppString.lblViewAll),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      _cardItem(
                          "assets/images/pepper_red.png", "Bell Pepper Red"),
                      SizedBox(
                        width: 10,
                      ),
                      _cardItem(
                          "assets/images/butternut.png", "Butternut Squash"),
                      SizedBox(
                        width: 4,
                      ),
                      _cardItem("assets/images/carrots.png", "Organic Carrots"),
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              _leftRightLabel(AppString.lblAddress, AppString.lblEditAddress),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Farmer, House 39, Vrundavan Road,\n"
                  "Gujarat, India - 364710",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  AppString.lblDeliveryTime,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "will be received on July 19, 2024",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              _leftRightLabel(
                  AppString.lblPaymentOptions, AppString.lblViewAll),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 50, // Adjust the height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 70,
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: index == selectedIndex
                                      ? kPrimaryColor
                                      : Color(0xffF3F5F7),
                                  width: 2.0),
                              color: Color(0xffF3F5F7),
                            ),
                            child: Center(
                              child: Image.asset(
                                paymentImagePath[index],
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            /*border: Border.all(
                              color: index == selectedIndex
                                  ? kPrimaryColor
                                  : Color(0xffF3F5F7),
                              width: 2.0),*/
                            color: Color(0xffF3F5F7),
                          ),
                          child: Icon(
                            CupertinoIcons.bookmark,
                            size: 20,
                            color: Colors.red,
                          ) /*Image.asset(
                          "assets/images/butternut.png",
                          height: 35,
                          width: 35,
                        ),*/
                          ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                            maxLength: 6,
                            textAlign: TextAlign.right,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: AppString.hintAddYourVoucher,
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                AppString.lblTotal,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\u20B9 936 ",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 19),
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                              shape: StadiumBorder(),
                              backgroundColor: kPrimaryColor),
                          child: Text(
                            AppString.btnPayNow,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
              /*Expanded(
                child: Row(),
              ),*/
              /*Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      physics: !scrollEnabled
                          ? const NeverScrollableScrollPhysics()
                          : const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Text("Hello $index");
                      }),
                ],
              ),*/
              /* ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Center(
                        child: Text(""),
                      ),
                    ),
                  );
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  String getPayMethodImagePath(int index) {
    return "";
  }

  Widget _leftRightLabel(String leftText, String rightText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            rightText,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _cardItem(String imagePath, String name) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: Color(0xffF3F5F7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
