import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grocery/strings.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: SplashScreen.routeName,
      getPages: routePages,
    );
  }
}

