import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/appbar.dart';
import 'package:pinndip/widgets/other_widgets.dart';

import '../utils/images.dart';

class PricingPlanScreen extends StatefulWidget {
  const PricingPlanScreen({Key? key}) : super(key: key);

  @override
  State<PricingPlanScreen> createState() => _PricingPlanScreenState();
}

class _PricingPlanScreenState extends State<PricingPlanScreen> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Ig.pricingPlanBackground))),
            child: Column(
              children: [
                appBar1("Pricing Plan"),
                addHeight(68.h),
                Text(
                  "Choose a subscription plan to unlock all the functionality of the application",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                addHeight(38.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 120.h,
                  width: 348.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.containerTextFormField),
                          fit: BoxFit.fill)),
                  child: Row(
                    children: [
                      Text(
                        "Monthly Plan",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        "\$100",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      addWidth(8.w),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        checkColor: Colors.blue,
                        activeColor: AppTheme.white,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;

                            // isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                addHeight(32.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 120.h,
                  width: 348.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.containerTextFormField),
                          fit: BoxFit.fill)),
                  child: Row(
                    children: [
                      Text(
                        "Monthly Plan",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        "\$100",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      addWidth(8.w),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        checkColor: Colors.blue,
                        activeColor: AppTheme.white,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;

                            // isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                addHeight(32.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 120.h,
                  width: 348.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.containerTextFormField),
                          fit: BoxFit.fill)),
                  child: Row(
                    children: [
                      Text(
                        "Monthly Plan",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        "\$100",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      addWidth(8.w),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        checkColor: Colors.blue,
                        activeColor: AppTheme.white,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;

                            // isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                addHeight(61.h),
                commonButton1("Subscribe Now", () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
