import 'package:flutter/widgets.dart';
import 'package:flutter_grocery/screens/register_screen.dart';

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

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  RegistrationScreen.routeName: (context) => const RegistrationScreen(),
  DashboardScreen.routeName: (context) => const DashboardScreen(),
  VegetablesScreen.routeName: (context) => const VegetablesScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  HistoryScreen.routeName: (context) => const HistoryScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  VegetableDetailScreen.routeName: (context) => const VegetableDetailScreen(),
  HomeSlider.routeName: (context) => const HomeSlider(),
  CheckOutScreen.routeName: (context) => const CheckOutScreen(),
};
