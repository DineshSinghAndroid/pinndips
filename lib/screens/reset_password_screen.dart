
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/widgets/appbar.dart';

import '../routers/my_router.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../widgets/common_textfield_area.dart';
import '../widgets/other_widgets.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: const Color(0xff101629),
      body: SafeArea(
        child: Container(height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Ig.resetPassimgbckground),fit: BoxFit.cover)),
 
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 70.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBar1(""),
                addHeight(68.h),
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Reset password",style: GoogleFonts.inter(fontSize: 31.sp,fontWeight: FontWeight.w700,color: Colors.white),)

                    ,
                    addHeight(5.h),
                    Text("Enter the email associated with your accountand we will send an email with instructions to reset your password.",


                      style: GoogleFonts.inter(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.white),)
                    ,
                  ],
                ),
                addHeight(51.h),
                const CommonTextFieldWidget(
                  hint: "Your Email Address"
                  ,             prefix: Icon(Icons.email,color:AppTheme.textColor,),
                ),    addHeight(51.h),
                commonButton1("Send",(){  }),
               Spacer(),
                Container(
                  height: 300.h,
                  width: 420.w,
                  decoration:   BoxDecoration(image: DecorationImage(image: AssetImage(Ig.resetPassimg))),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
