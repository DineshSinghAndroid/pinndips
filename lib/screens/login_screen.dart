import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/routers/my_router.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/dimensions.dart';

import '../utils/images.dart';
import '../utils/text_styles.dart';
import '../widgets/appbar.dart';
import '../widgets/common_textfield_area.dart';
import '../widgets/other_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool? _value = false;
    bool isChecked = false;
    return Scaffold(
      backgroundColor: const Color(0xff101629),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 38.w,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    addHeight(50.h),
                    appBar1("Login"),
                    addHeight(70.h),
                    const CommonTextFieldWidget(
                      hint: "Your Email Address",
                      prefix: Icon(
                        Icons.email,
                        color: AppTheme.textColor,
                      ),
                    ),
                    addHeight(47.h),
                    const CommonTextFieldWidget(
                      hint: "Enter Your Password",
                      prefix: Icon(
                        Icons.key,
                        color: AppTheme.textColor,
                      ),
                    ),
                    addHeight(47.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 23.h,
                          width: 23.w,
                          color: Colors.yellow,
                          child: Checkbox(
                            activeColor: Colors.black,
                            checkColor: Colors.black,
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                                // isChecked = value!;
                              });
                            },
                          ),
                        ),
                        addWidth(10.w),
                        Text(
                          "Remember Me",
                          style: AppTextStyles.size16WithW400,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forgot Password?",
                            style: AppTextStyles.size16WithW400,
                          ),
                        ),
                      ],
                    ),
                    addHeight(59.h),
                    commonButton1("Log in", () {
                      Get.toNamed(MyRouter.verifyOtpScreen);
                    }),
                    addHeight(17.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Dont Have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: AppTheme.textColor),
                            children: <TextSpan>[
                              TextSpan(
                                text: " SIGN UP",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp,
                                    color: Colors.yellow),
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
                    addHeight(70.h),
                    Container(
                      height: 286.h,
                      width: 267.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Ig.loginChartImg))),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
