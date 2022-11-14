import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/appbar.dart';

import '../utils/images.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Ig.resetPassimgbckground),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              appBar1("Subscriptions"),
              addHeight(60.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height: 120.h,
                width: 348.w,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "6 Month Plan",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        "\$100",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
