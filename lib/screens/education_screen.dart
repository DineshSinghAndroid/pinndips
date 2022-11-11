import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/widgets/appbar.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff101629),
        body: Column(
          children: <Widget>[
            addHeight(20.h),
            Container(
              // color: Color(0xff090C17),
              height: 60.h,
              width: 348.w,
              child: TabBar(
                // indicator: UnderlineTabIndicator(),
                automaticIndicatorColorAdjustment: true,
                indicatorColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.transparent,
                tabs: [
                  Container(
                    height: 48.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      color: const Color(0xff333751),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Videos",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 48.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Tutorials",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar lview widget
                  Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                    color: Colors.pink,
                    child: const Center(
                      child: Text(
                        'Car',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
