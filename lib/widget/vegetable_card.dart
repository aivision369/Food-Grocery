import 'package:flutter/material.dart';

import 'like.dart';

class VegetableCardWidget extends StatelessWidget {
  const VegetableCardWidget(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.price,
      required this.onClick})
      : super(key: key);

  final String imagePath;
  final String name;
  final String price;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(),
      child: Card(
        color: Color(0xffF3F5F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 10.0, top: 5.0, bottom: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Like(),
                ],
              ),
              Image.asset(
                imagePath,
                width: 120,
                height: 120,
              ),
              SizedBox(
                height: 16,
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                        color: Color(0xffFF324B),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    "assets/images/add_icon.png",
                    width: 32,
                    height: 32,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
