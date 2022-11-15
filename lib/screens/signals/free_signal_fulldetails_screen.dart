import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/appbar.dart';

import '../../utils/images.dart';

class FreeSignalFullDetailsSreen extends StatefulWidget {
  const FreeSignalFullDetailsSreen({Key? key}) : super(key: key);

  @override
  State<FreeSignalFullDetailsSreen> createState() =>
      _FreeSignalFullDetailsSreenState();
}

class _FreeSignalFullDetailsSreenState
    extends State<FreeSignalFullDetailsSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar1("Signals"),
              addHeight(88.h),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Ig.freeSignalImgContainer))),
                height: 258.h,
                width: 383.w,
              ),
              addHeight(67.h),
              Text(
                "Technical Analysis",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              addHeight(10.h),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(Ig.chartSignal))),
                height: 258.h,
                width: 383.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
