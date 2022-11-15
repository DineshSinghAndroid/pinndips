import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pinndip/screens/splash_screen.dart';

import '../screens/calculator_screen.dart';
import '../screens/change_password_screen.dart';
import '../screens/edit_profile_screen.dart';
import '../screens/login_screen.dart';
import '../screens/bottom_navigation_bar.dart';
import '../screens/my_profile_screen.dart';
import '../screens/news_Full_Details_Screen.dart';
import '../screens/notification_screen.dart';
import '../screens/signals/free_signal_fulldetails_screen.dart';
import '../screens/signup.dart';
import '../screens/subscriptions_screen.dart';
import '../screens/tutorials_screen_details.dart';
import '../screens/verify_otp_screen.dart';

class MyRouter {
  static var splashScreen = "/splashScreen";
  static var loginScreen = "/loginScreen";
  static var signUpScreen = "/signUpScreen";
  static var profileScreen = "/profileScreen";
  static var customBottomNavigationBar = "/customBottomNavigationBar";
  static var newsFullDetailsScreen = "/newsFullDetailsScreen";
  static var calculatorScreen = "/calculatorScreen";
  static var verifyOtpScreen = "/verifyOtpScreen";
  static var notificationScreen = "/notificationScreen";
  static var editProfileScreen = "/editProfileScreen";
  static var changePasswordScreen = "/changePasswordScreen";
  static var subscriptionsScreen = "/subscriptionsScreen";
  static var fullTurotialPage = "/fullTurotialPage";
  static var freeSignalFullDetailsSreen = "/freeSignalFullDetailsSreen";

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
    GetPage(name: MyRouter.calculatorScreen, page: () => CalculatorScreen()),
    GetPage(name: MyRouter.verifyOtpScreen, page: () => VerifyOtpScreen()),
    GetPage(
        name: MyRouter.notificationScreen, page: () => NotificationScreen()),
    GetPage(name: MyRouter.editProfileScreen, page: () => EditProfileScreen()),
    GetPage(
        name: MyRouter.changePasswordScreen,
        page: () => ChangePasswordScreen()),
    GetPage(
        name: MyRouter.subscriptionsScreen, page: () => SubscriptionsScreen()),
    GetPage(name: MyRouter.fullTurotialPage, page: () => FullTurotialPage()),
    GetPage(
        name: MyRouter.freeSignalFullDetailsSreen,
        page: () => FreeSignalFullDetailsSreen()),
  ];
}
