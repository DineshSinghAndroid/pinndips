import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/dimensions.dart';

import '../routers/my_router.dart';
import '../utils/images.dart';
import '../utils/text_styles.dart';
import '../widgets/appbar.dart';
import '../widgets/common_textfield_area.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool? _value = false;
    bool isChecked = false;
    return Scaffold(
      backgroundColor: const Color(0xff101629),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Ig.resetPassimgbckground),fit: BoxFit.cover)),

            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.w,  ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children:  [

                      addHeight(40.h),
                      appBar1("Sign Up"),
                      addHeight(50.h),
                      const CommonTextFieldWidget(
                        hint: "@pipndip"                    ),

                      addHeight(37.h),
                      const CommonTextFieldWidget(hint: "pipndip@gmail.com",

                      ),
                      addHeight(37.h),
                      const CommonTextFieldWidget(hint: "..................",

                      ),
                      addHeight(37.h),
                      const CommonTextFieldWidget(hint: "..................",

                      ),
                      addHeight(37.h),
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
                              checkColor: Colors.blue
                              ,
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
                           Expanded(
                             child: Text(
                              "By signing up you accept the Terms"
                                  "and Privacy Policy",
                              style: AppTextStyles.size16WithW400,
                          ),
                           ),


                        ],
                      ),
                      addHeight(41.h),
                      commonButton1("Sign Up",(){
                        Get.toNamed(MyRouter.customBottomNavigationBar);
                      }),

                      addHeight(17.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Already Have an account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  color: AppTheme.textColor),
                              children: <TextSpan>[

                                TextSpan(

                                  text: " Login",
                                  style: GoogleFonts.inter(

                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp,
                                      color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.back();
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                       Container(
                        height: 278.h,
                        width: 279.w,
                        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(Ig.signUpChartImg))),)
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector commonButton1(text,ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60.h,
        width: 346.w,
        decoration: const BoxDecoration(image: DecorationImage(
            image: AssetImage(Ig.buttonBckImg,),fit: BoxFit.cover
        )),

        child: Center(child: Text(text,style:GoogleFonts.inter(fontWeight: FontWeight.w600
            ,fontSize: 18.sp,color: Colors.white))),),
    );
  }

}
