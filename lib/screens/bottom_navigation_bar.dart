import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinndip/screens/praveensir/education_screen.dart';
import 'package:pinndip/screens/signals/signals_screen.dart';
import '../utils/images.dart';
import 'calculator_screen.dart';
import 'home_screen_news.dart';
import 'my_profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

String? _selectedExperties;
String? _selectedLanguage;

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int pageIndex = 0;
  List Names = ['Call', 'Chat', 'Video'];
  final pages = [
    HomeScreenNews(),
    EducationScreen(),
    SignalsScreen(),
    CalculatorScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101629),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: pages[pageIndex],
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 88.h,
      width: 428.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Ig.navBarBottom))),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: pageIndex == 0
                        ? AssetImage(Ig.homeColor)
                        : AssetImage(Ig.homeIcon),
                    fit: BoxFit.contain),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: pageIndex == 1
                        ? AssetImage(Ig.eduColor)
                        : AssetImage(Ig.edu),
                    fit: BoxFit.contain),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: pageIndex == 2
                        ? AssetImage(Ig.signalColor)
                        : AssetImage(Ig.signal),
                    fit: BoxFit.contain),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: pageIndex == 3
                        ? AssetImage(Ig.calcuColor)
                        : AssetImage(Ig.calcu),
                    fit: BoxFit.contain),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
              ),
            ),
            Container(
              height: 25.h,
              width: 25.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: pageIndex == 4
                        ? AssetImage(Ig.person)
                        : AssetImage(Ig.profileIcon),
                    fit: BoxFit.cover),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 4;
                  });
                },
              ),
            ),

            // IconButton(
            //   icon: Icon(Icons.home,
            //       size: 30.h,
            //       color: pageIndex == 0 ? Color(0xffF63D39) : Colors.white),
            //   onPressed: () {
            //     setState(() {
            //       pageIndex = 0;
            //     });
            //   },
            // ),
            // IconButton(
            //   icon: Icon(Icons.file_copy_outlined,
            //       size: 30.h,
            //       color: pageIndex == 1 ? Color(0xffF63D39) : Colors.white),
            //   onPressed: () {
            //     setState(() {
            //       pageIndex = 1;
            //     });
            //   },
            // ),
            // IconButton(
            //   icon: Icon(Icons.verified,
            //       size: 30.h,
            //       color: pageIndex == 2 ? Color(0xffF63D39) : Colors.white),
            //   onPressed: () {
            //     setState(() {
            //       pageIndex = 2;
            //     });
            //   },
            // ),
            // IconButton(
            //   icon: Icon(Icons.calculate,
            //       size: 30.h,
            //       color: pageIndex == 3 ? Color(0xffF63D39) : Colors.white),
            //   onPressed: () {
            //     setState(() {
            //       pageIndex = 3;
            //     });
            //   },
            // ),
            // IconButton(
            //   icon: Icon(Icons.person_outline,
            //       size: 30.h,
            //       color: pageIndex == 4 ? Color(0xffF63D39) : Colors.white),
            //   onPressed: () {
            //     setState(() {
            //       pageIndex = 4;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
