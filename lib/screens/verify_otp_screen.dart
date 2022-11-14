import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';

import '../routers/my_router.dart';
import '../utils/images.dart';
import '../utils/text_styles.dart';
import '../widgets/appbar.dart';
import '../widgets/common_textfield_area.dart';
import '../widgets/other_widgets.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Ig.resetPassimgbckground),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40.h,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 21.h,
                    width: 31.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Ig.backArrowImg))),
                  ),
                ),
              ),
              addHeight(70.h),
              Text(
                "Enter OTP",
                style: GoogleFonts.inter(
                    fontSize: 31.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              addHeight(8.h),
              Text(
                "Enter the OTP recieved on your email. ",
                style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              addHeight(48.h),
              const CommonTextFieldWidget(
                hint: "Enter OTP here",
              ),
              addHeight(48.h),
              commonButton1("Verify", () {
                Get.toNamed(MyRouter.signUpScreen);
              }),
              addHeight(32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Haven't recived OTP? ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppTheme.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Resend",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                              color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(MyRouter.signUpScreen);
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
