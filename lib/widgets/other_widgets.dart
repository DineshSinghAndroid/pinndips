import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/images.dart';

GestureDetector commonButton1(text,ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: 60.h,
      width: 346.w,
      decoration:   BoxDecoration(image: DecorationImage(
          image: AssetImage(Ig.buttonBckImg,),fit: BoxFit.cover
      )),

      child: Center(child: Text(text,style:GoogleFonts.inter(fontWeight: FontWeight.w600
          ,fontSize: 18.sp,color: Colors.white))),),
  );
}