import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/utils/images.dart';
import 'package:pinndip/utils/text_styles.dart';
import 'package:pinndip/widgets/appbar.dart';
import 'package:pinndip/widgets/other_widgets.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String? _selectedExperties;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 47.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 14.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Ig.walletIcon),
                              fit: BoxFit.cover)),
                    ),
                    addWidth(8.w),
                    Text("Account Balance in USD",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                addHeight(13.h),
                Container(
                  height: 60.h,
                  width: 348.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.w,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.containerTextFormField),
                          fit: BoxFit.fill)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "2500",
                        hintStyle: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                addHeight(40.h),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Ig.dolloerIcon),
                              fit: BoxFit.cover)),
                    ),
                    addWidth(8.w),
                    Text("Currency Pair",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                addHeight(13.h),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.containerTextFormField),
                          fit: BoxFit.fill)),
                  width: 348.w,
                  height: 60.h,
                  padding: EdgeInsets.symmetric(horizontal: 41.w),
                  child: DropdownButton<String>(
                    underline: const SizedBox(),
                    enableFeedback: true,
                    // itemHeight: 60.h,
                    menuMaxHeight: 320.h,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    hint: Text("GBP.USD",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),

                    isExpanded: true,
                    items:
                        <String>['USD', 'Ruppe ', 'Paisa'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      // setState(() {
                      //   _selectedExperties = value;
                      //   print(_selectedExperties);
                      // });
                    },
                    value: _selectedExperties,
                    style: AppTextStyles.size14WithW400darkblack,
                  ),
                ),
                addHeight(40.h),
                Row(
                  children: [
                    Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Ig.percentageIcon),
                              fit: BoxFit.cover)),
                    ),
                    addWidth(10.w),
                    Text("Risk",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                addHeight(13.h),
                Container(
                  height: 60.h,
                  width: 348.w,
                  padding: EdgeInsets.only(left: 25.w),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.containerTextFormField),
                          fit: BoxFit.fill)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "16",
                        suffixIcon: Icon(
                          Icons.percent,
                          size: 20.h,
                          color: Colors.white,
                        ),
                        hintStyle: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                addHeight(40.h),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Ig.stopLossCircleIcon),
                              fit: BoxFit.fitHeight)),
                    ),
                    addWidth(8.w),
                    Text("Stop Loss .",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                    Text("PIPS",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 22.sp,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
                addHeight(13.h),
                Container(
                  height: 60.h,
                  width: 348.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.w,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.containerTextFormField),
                          fit: BoxFit.fill)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "9",
                        hintStyle: GoogleFonts.sourceSansPro(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                addHeight(54.h),
                commonButton1("Calculate", () {}),
                addHeight(31.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  height: 100.h,
                  width: 352.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color(0xff333751)),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Position Size",
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "STANDARD LOTS",
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "0.025300",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
