import 'package:flutter/widgets.dart';
import 'package:flutter_grocery/screens/register_screen.dart';
import 'package:get/get.dart';

import 'screens/check_out_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/navigation/cart_screen.dart';
import 'screens/navigation/category_screen.dart';
import 'screens/navigation/history_screen.dart';
import 'screens/navigation/home_screen.dart';
import 'screens/navigation/profile_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/vegetable_detail_screen.dart';
import 'screens/vegetables_screen.dart';
import 'widget/home_slider.dart';

final routePages = [
  GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
  GetPage(name: RegistrationScreen.routeName, page: () => RegistrationScreen()),
  GetPage(name: DashboardScreen.routeName, page: () => DashboardScreen()),
  GetPage(name: VegetablesScreen.routeName, page: () => VegetablesScreen()),
  GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
  GetPage(name: CategoryScreen.routeName, page: () => CategoryScreen()),
  GetPage(name: HistoryScreen.routeName, page: () => HistoryScreen()),
  GetPage(name: CartScreen.routeName, page: () => CartScreen()),
  GetPage(
      name: VegetableDetailScreen.routeName,
      page: () => VegetableDetailScreen()),
  GetPage(name: HomeSlider.routeName, page: () => HomeSlider()),
  GetPage(name: CheckOutScreen.routeName, page: () => CheckOutScreen()),
  GetPage(name: ProfileScreen.routeName, page: () => ProfileScreen()),
];
