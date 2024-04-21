import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery/screens/navigation/cart_screen.dart';

import '../constants.dart';

class VegetableDetailScreen extends StatefulWidget {
  static String routeName = "/vegetableDetail";

  const VegetableDetailScreen({Key? key}) : super(key: key);

  @override
  _VegetableDetailScreenState createState() => _VegetableDetailScreenState();
}

class _VegetableDetailScreenState extends State<VegetableDetailScreen> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF3F5F7),
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 140.0))),
              child: Column(
                children: [
                  SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Image.asset(
                            "assets/images/back_icon.png",
                            width: 44,
                            height: 44,
                          ),
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            CupertinoIcons.heart,
                            color: Colors.redAccent,
                            size: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.center,
                    widthFactor: 0.6,
                    child: Container(
                      child: Image.asset(
                        "assets/images/ginger.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Arabic Ginger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  itemCount++;
                                });
                              }),
                              child: Image.asset(
                                "assets/images/add_icon.png",
                                width: 32,
                                height: 32,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "$itemCount",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  if (itemCount > 0) itemCount--;
                                });
                              }),
                              child: Image.asset(
                                "assets/images/remove_icon.png",
                                width: 32,
                                height: 32,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1 kg, \u20B9 250",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 19),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      _itemKeyPointsView(
                          "assets/images/reviews.png", "4.8", "Reviews"),
                      SizedBox(
                        width: 10,
                      ),
                      _itemKeyPointsView("assets/images/expiration.png",
                          "1 Year", "Expiration"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _itemKeyPointsView(
                          "assets/images/organic.png", "100%", "Organic"),
                      SizedBox(
                        width: 10,
                      ),
                      _itemKeyPointsView(
                          "assets/images/calories.png", "8 kcal", "100 Gram"),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CartScreen.routeName);
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xff23AA49),
                      ),
                      child: Text("Add In Bucket"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemKeyPointsView(String imagePath, String name, String desc) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border.all(color: Color(0xffF1F1F5))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(desc,
                    style: TextStyle(fontSize: 14, color: Color(0xff979899))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
