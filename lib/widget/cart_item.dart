import 'package:flutter/material.dart';
import 'package:flutter_grocery/model/cart_item_model.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key, required this.item, required this.onRefreshed})
      : super(key: key);

  final CartItemModel item;
  final VoidCallback onRefreshed;

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              widget.item.imagePath,
              height: 40,
              width: 40,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.name,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.item.price,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.redAccent),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (widget.item.count >= 1) {
                        widget.item.count = widget.item.count - 1;
                        widget.onRefreshed();
                      }
                    });
                  },
                  child: Image.asset(
                    "assets/images/remove_icon.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "${widget.item.count}",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.item.count = widget.item.count + 1;
                      widget.onRefreshed();
                    });
                  },
                  child: Image.asset(
                    "assets/images/add_icon.png",
                    height: 30,
                    width: 30,
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
