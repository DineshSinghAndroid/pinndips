import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routers/my_router.dart';
import '../utils/images.dart';

Container appBar1(text1) {
  return Container(
    height: 40.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            height: 21.h,
            width: 31.w,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Ig.backArrowImg))),
          ),
        ),
        Text(
          text1,
          style: GoogleFonts.sourceSansPro(
              fontSize: 31.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        SizedBox()
      ],
    ),
  );
}

Container appBar2(text1) {
  return Container(
    height: 40.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Text(
          text1,
          style: GoogleFonts.sourceSansPro(
              fontSize: 31.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(MyRouter.notificationScreen);
          },
          child: Container(
            height: 30.h,
            width: 31.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Ig.notificationBellIcon))),
          ),
        ),
      ],
    ),
  );
}

Container appBar3(text1) {
  return Container(
    height: 40.h,
    child: Text(
      text1,
      style: GoogleFonts.sourceSansPro(
          fontSize: 31.sp, color: Colors.white, fontWeight: FontWeight.w600),
    ),
  );
}

SizedBox addHeight(double size) => SizedBox(height: size.h);

SizedBox addWidth(double size) => SizedBox(width: size.w);
