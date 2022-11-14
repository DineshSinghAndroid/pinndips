import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/appbar.dart';
import 'package:pinndip/widgets/other_widgets.dart';

import '../utils/images.dart';
import '../widgets/common_textfield_area.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar1("Change Password"),
              addHeight(32.h),
              Text(
                "Current Password",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textColor),
              ),
              addHeight(12.h),
              const CommonTextFieldWidget(
                hint: "*****************",
              ),
              addHeight(32.h),
              Text(
                "New Password",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textColor),
              ),
              addHeight(12.h),
              const CommonTextFieldWidget(
                hint: "*****************",
              ),
              addHeight(32.h),
              Text(
                "Confirm Password",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textColor),
              ),
              addHeight(12.h),
              const CommonTextFieldWidget(
                hint: "*****************",
              ),
              Spacer(),
              commonButton1("Save", () {})
            ],
          ),
        ),
      ),
    );
  }
}
