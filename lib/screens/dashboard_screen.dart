import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'navigation/cart_screen.dart';
import 'navigation/category_screen.dart';
import 'navigation/history_screen.dart';
import 'navigation/home_screen.dart';
import 'navigation/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/dashboard";

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentTab = 0;

  final List<Widget> pages = [
    HomeScreen(),
    CategoryScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  void changeTab(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            /*PageStorage(
          bucket: PageStorageBucket(),
          child: pages[currentTab],
        ),*/
            IndexedStack(
          index: currentTab,
          children: [
            HomeScreen(tabIndex:changeTab),
            CategoryScreen(),
            HistoryScreen(),
            ProfileScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Icon(
            //CupertinoIcons.cart,
            Icons.add_shopping_cart,
          ),
          onPressed: () {
            Navigator.pushNamed(context, CartScreen.routeName);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
              padding: EdgeInsets.only(
                top: 5,
              ),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            //currentScreen = HomeScreen(sendNavigationPosition: changeTab);
                            //changeTab(0);
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              CupertinoIcons.home,
                              //Icons.dashboard,
                              color:
                                  currentTab == 0 ? kPrimaryColor : Colors.grey,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: currentTab == 0
                                    ? kPrimaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            //currentScreen = CategoryScreen();
                            //changeTab(1);
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.category,
                              color:
                                  currentTab == 1 ? kPrimaryColor : Colors.grey,
                            ),
                            Text(
                              "Category",
                              style: TextStyle(
                                color: currentTab == 1
                                    ? kPrimaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            //currentScreen = HistoryScreen();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              //CupertinoIcons.profile_circled,
                              Icons.calendar_today_rounded,
                              color:
                                  currentTab == 2 ? kPrimaryColor : Colors.grey,
                            ),
                            Text(
                              "History",
                              style: TextStyle(
                                color: currentTab == 2
                                    ? kPrimaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            //currentScreen = ProfileScreen();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              CupertinoIcons.profile_circled,
                              color:
                                  currentTab == 3 ? kPrimaryColor : Colors.grey,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                color: currentTab == 3
                                    ? kPrimaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
        ));
  }
}
