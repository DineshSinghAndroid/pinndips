import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/appbar.dart';

import '../routers/my_router.dart';
import '../utils/images.dart';

class HomeScreenNews extends StatefulWidget {
  const HomeScreenNews({Key? key}) : super(key: key);

  @override
  State<HomeScreenNews> createState() => _HomeScreenNewsState();
}

class _HomeScreenNewsState extends State<HomeScreenNews> {
  List imgs = [
    Ig.news1,
    Ig.news2,
    Ig.news3,
    Ig.news4,
    Ig.news1,
    Ig.news2,
    Ig.news3,
    Ig.news4,
    Ig.news1,
    Ig.news1,
    Ig.news2,
    Ig.news3,
    Ig.news4,
    Ig.news1,
    Ig.news2,
    Ig.news3,
    Ig.news4,
    Ig.news1,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101629),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              addHeight(20.h),
              appBar2("Updates & News "),
              addHeight(30.h),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: imgs.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(MyRouter.newsFullDetailsScreen);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff333751),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        margin: EdgeInsets.only(bottom: 30.h),
                        height: 160.h,
                        width: 359.w,
                        child: Row(
                          children: [
                            Container(
                              height: 160.h,
                              width: 154.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imgs[index]),
                                      fit: BoxFit.cover)),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 27.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Forex",
                                          style: GoogleFonts.sourceSansPro(
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppTheme.textColor),
                                        ),
                                        Text(
                                          "12 Sep 2022",
                                          style: GoogleFonts.sourceSansPro(
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppTheme.textColor),
                                        ),
                                      ],
                                    ),
                                    addHeight(12.h),
                                    Text(
                                      "Best forex trading signals:",
                                      style: GoogleFonts.sourceSansPro(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "Buy monthly subscription ",
                                      style: GoogleFonts.sourceSansPro(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
