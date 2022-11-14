import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pinndip/routers/my_router.dart';
import 'package:pinndip/screens/bottom_navigation_bar.dart';
import 'package:pinndip/screens/edit_profile_screen.dart';
import 'package:pinndip/screens/news_Full_Details_Screen.dart';
import 'package:pinndip/screens/reset_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          darkTheme: ThemeData.light(),
          // defaultTransition: Transition.rightToLeft,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: MyRouter.route,
          // home: CustomBottomNavigationBar(),

          // theme: ThemeData(
          //     fontFamily: 'Raleway',
          //     primaryColor: AppTheme.primaryColor,
          //     // highlightColor: AppTheme.primaryColor,
          //     scrollbarTheme: const ScrollbarThemeData().copyWith(
          //       thumbColor: MaterialStateProperty.all(AppTheme.primaryColor),
          //     ),
          //     colorScheme: ColorScheme.fromSwatch()
          //         .copyWith(secondary: AppTheme.primaryColor)
          // ),
        );
      },
    );
  }
}
