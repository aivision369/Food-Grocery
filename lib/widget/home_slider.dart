import 'package:flutter/material.dart';

import '../constants.dart';

class HomeSlider extends StatefulWidget {
  static String routeName = "/text";

  const HomeSlider({Key? key}) : super(key: key);

  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int currentPage = 0;
  List bannerList = [
    "assets/images/banner.png",
    "assets/images/banner.png",
    "assets/images/banner.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 224,
          child: PageView.builder(
            controller: PageController(initialPage: 1, viewportFraction: 0.9),
            itemCount: bannerList.length,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Image.asset(
                  "assets/images/banner.png",
                  scale: 4.0,
                ),
              );
            },
          ),
        ),
        Container(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                bannerList.length,
                (index) => AnimatedContainer(
                      duration: const Duration(microseconds: 600),
                      margin: const EdgeInsets.only(right: 5),
                      height: 6,
                      width: currentPage == index ? 20 : 6,
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? kPrimaryColor
                            : const Color(0xFFD8D8D8),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
