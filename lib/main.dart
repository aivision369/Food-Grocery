import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
  /*runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  ));*/
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      //home: Test(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text('Center-Left TextFormField in Rounded Container'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 40,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepPurpleAccent,
            ),
            child: TextFormField(
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 16),
                hintText: 'Enter your text',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
