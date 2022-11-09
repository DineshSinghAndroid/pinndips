import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pinndip/screens/splash_screen.dart';

import '../screens/login_screen.dart';
import '../screens/bottom_navigation_bar.dart';
import '../screens/my_profile_screen.dart';
import '../screens/news_Full_Details_Screen.dart';
import '../screens/signup.dart';

class MyRouter {
  static var splashScreen = "/splashScreen";
  static var loginScreen = "/loginScreen";
  static var signUpScreen = "/signUpScreen";
  static var profileScreen = "/profileScreen";
  static var customBottomNavigationBar = "/customBottomNavigationBar";
  static var newsFullDetailsScreen = "/newsFullDetailsScreen";

  static var route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: MyRouter.loginScreen, page: () => LoginScreen()),
    GetPage(name: MyRouter.signUpScreen, page: () => SignUpScreen()),
    GetPage(
        name: MyRouter.customBottomNavigationBar,
        page: () => CustomBottomNavigationBar()),
    GetPage(
        name: MyRouter.newsFullDetailsScreen,
        page: () => NewsFullDetailsScreen()),
  ];
}
