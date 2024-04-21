import 'package:flutter/material.dart';
import 'package:flutter_grocery/model/cart_item_model.dart';
import 'package:flutter_grocery/widget/cart_item.dart';

import '../../constants.dart';
import '../check_out_screen.dart';

class CartScreen extends StatefulWidget {
  static String routeName = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.2,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return CartItem(
                    item: CartItemModel.CartItemList[index],
                    onRefreshed: () {
                      /*double itemCount = CartItemModel.CartItemList.fold(
                          0,
                          (previousValue, element) =>
                              previousValue + element.count);*/
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: CartItemModel.CartItemList.length),
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
                      Navigator.pushNamed(context, CheckOutScreen.routeName);
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: StadiumBorder(),
                        backgroundColor: kPrimaryColor),
                    child: Text("CheckOut"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
