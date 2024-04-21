import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery/model/vegetable_data.dart';
import 'package:flutter_grocery/widget/vegetable_card.dart';

import '../constants.dart';

class VegetablesScreen extends StatelessWidget {
  static String routeName = "/vegetables";

  const VegetablesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          "Vegetables",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0.0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.2,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF3F5F7),
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search here...",
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  contentPadding: EdgeInsets.all(16),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  mainAxisExtent: 270,
                ),
                itemBuilder: (context, index) {
                  return VegetableCardWidget(
                    imagePath:
                        VegetableItemModel.vegetableItemList[index].imagePath,
                    name: VegetableItemModel.vegetableItemList[index].name,
                    price: VegetableItemModel.vegetableItemList[index].price,
                    onClick: () {},
                  );
                },
                itemCount: VegetableItemModel.vegetableItemList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
