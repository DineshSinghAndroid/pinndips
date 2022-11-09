// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'colors.dart';
//
import 'dart:ui';

 import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTextStyles {
  static TextStyle size12WithW400 = GoogleFonts.inter(
    color: AppTheme.textColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size14WithW400 = GoogleFonts.inter(
    color: AppTheme.textColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size14WithW400353535 = GoogleFonts.inter(
    color: Color(0xff353535),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle size14WithW500 = GoogleFonts.inter(
    color: const Color(0xFF111115),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size14WithW500darkblack = GoogleFonts.inter(
    color: const Color(0xFF111115),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size14WithW400darkblack = GoogleFonts.inter(
    color: const Color(0xFF111115),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle size16WithW400 = GoogleFonts.inter(
    color: AppTheme.textColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size16WithW500 = GoogleFonts.inter(
    color: const Color(0xFF111115),
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size18WithW500 = GoogleFonts.inter(
    color: AppTheme.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );static TextStyle size18WithW400 = GoogleFonts.inter(
    color: AppTheme.textColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size18WithW600 = GoogleFonts.inter(
    color: AppTheme.textColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle size20WithW500 = GoogleFonts.inter(
    color: const Color(0xFF111115),
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size24WithW500 = GoogleFonts.inter(
    color: const Color(0xFF111115),
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle size24WithW400 = GoogleFonts.inter(
    color: const Color(0xFF111115),
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle commonButtonTextWhite = GoogleFonts.inter(
    color: const Color(0xFFFFFFFF),
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
//   static TextStyle textSize24With500WeightBlack = GoogleFonts.inter(
//     color: AppTheme.black,
//     fontSize: 24.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightBlack = GoogleFonts.inter(
//     color: AppTheme.black,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightBlackMainColor = GoogleFonts.inter(
//     color: AppTheme.blackMainColor,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightWhite = GoogleFonts.inter(
//     color: AppTheme.white,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With500WeightprimaryColor = GoogleFonts.inter(
//     color: AppTheme.primaryColor,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize18With600WeightprimaryColor = GoogleFonts.inter(
//     color: AppTheme.primaryColor,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w600,
//   );
//   static TextStyle textSize18With500WeightSecondaryBlack = GoogleFonts.inter(
//     color: AppTheme.secondaryBlack,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//   );
//
//   static TextStyle textSize16With400WeightGray = GoogleFonts.inter(
//     color: AppTheme.gray,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightprimaryColor = GoogleFonts.inter(
//     color: AppTheme.primaryColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With500WeightBlack = GoogleFonts.inter(
//     color: AppTheme.black,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightBlackMainColor = GoogleFonts.inter(
//     color: AppTheme.blackMainColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightBrownBorderColor =
//       GoogleFonts.inter(
//     color: AppTheme.brownBorderColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightPureBlack = GoogleFonts.inter(
//     color: AppTheme.pureBlackColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightWhite = GoogleFonts.inter(
//     color: AppTheme.white,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With500WeightNormalBlack = GoogleFonts.inter(
//     color: Colors.black,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//
//   static TextStyle textSize16With500WeightGray = GoogleFonts.inter(
//     color: AppTheme.white,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With500WeightSecondaryBlack = GoogleFonts.inter(
//     color: AppTheme.secondaryBlack,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize16With400WeightSecondaryBlack = GoogleFonts.inter(
//     color: AppTheme.secondaryBlack,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightThirdBlack = GoogleFonts.inter(
//     color: AppTheme.thirdBlackColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightPureBlack = GoogleFonts.inter(
//     color: AppTheme.pureBlackColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightBlack = GoogleFonts.inter(
//     color: AppTheme.black,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With400WeightIconBlack = GoogleFonts.inter(
//     color: AppTheme.iconBlack,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize16With500WeightprimaryColor = GoogleFonts.inter(
//     color: AppTheme.primaryColor,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With400WeightThirdBlack = GoogleFonts.inter(
//     color: AppTheme.thirdBlackColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightThirdBlack2 = GoogleFonts.inter(
//     color: const Color(0xFF979797),
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightsecondaryBlack = GoogleFonts.inter(
//     color: AppTheme.secondaryBlack,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightprimaryColor = GoogleFonts.inter(
//     color: AppTheme.primaryColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightThirdBlackWithLessOpacity =
//       GoogleFonts.inter(
//     color: AppTheme.white.withOpacity(
//       0.89,
//     ),
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightBlack = GoogleFonts.inter(
//     color: AppTheme.black,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightBlackMainColor = GoogleFonts.inter(
//     color: AppTheme.blackMainColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With400WeightIconBlack = GoogleFonts.inter(
//     color: AppTheme.iconBlack,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize14With500WeightPureBlack = GoogleFonts.inter(
//     color: AppTheme.pureBlackColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightBlackMainColor = GoogleFonts.inter(
//     color: AppTheme.blackMainColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightTextBlackMainColor =
//       GoogleFonts.inter(
//     color: AppTheme.textMainColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightBlack = GoogleFonts.inter(
//     color: AppTheme.black,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightprimaryColor = GoogleFonts.inter(
//     color: AppTheme.primaryColor,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize20With600WeightPureBlack = GoogleFonts.inter(
//     color: AppTheme.pureBlackColor,
//     fontSize: 20.0,
//     fontWeight: FontWeight.w600,
//   );
//   static TextStyle textSize14With500WeightWhite = GoogleFonts.inter(
//     color: AppTheme.white,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With500WeightIconBlack = GoogleFonts.inter(
//     color: AppTheme.iconBlack,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize14With600WeightBlack = GoogleFonts.inter(
//     color: AppTheme.black,
//     fontSize: 14.0,
//     fontWeight: FontWeight.w600,
//   );
//
//   static TextStyle textSize12With400WeightSecondaryBlack = GoogleFonts.inter(
//     color: AppTheme.textColor,
//     fontSize: 14.sp,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize12With400WeightBlack = GoogleFonts.inter(
//     color: Color(0xff4e4e52),
//     fontSize: 12.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize12With400WeightBlackMainColor = GoogleFonts.inter(
//     color:  Color(0xff4e4e52),
//     fontSize: 12.0,
//     fontWeight: FontWeight.w400,
//   );
//   static TextStyle textSize12With400WeightSubTextColor = GoogleFonts.inter(
//     color: AppTheme.subTextColor,
//     fontSize: 14.0.sp,
//     fontWeight: FontWeight.w400,
//   );
//
//   static TextStyle textSize12With500WeightSecondaryBlack = GoogleFonts.inter(
//     color:  Color(0xff4e4e52),
//     fontSize: 12.0.sp,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize12With500WeightWhite = GoogleFonts.inter(
//     color: AppTheme.white,
//     fontSize: 12.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textSize12With500WeightprimaryColor = GoogleFonts.inter(
//     color: AppTheme.primaryColor,
//     fontSize: 12.0,
//     fontWeight: FontWeight.w500,
//   );
//   static TextStyle textbuttonTextStyle = GoogleFonts.inter(
//     color: AppTheme.white,
//     fontSize: 16.0,
//     fontWeight: FontWeight.w500,
//   );
//
//   static TextStyle dmSerifFontHeading = GoogleFonts.dmSerifDisplay(
//     color: AppTheme.black,
//     fontSize: 18.0,
//     fontWeight: FontWeight.w400,
//   );
// }
