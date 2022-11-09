import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Size textButtonFixedSize = Size(258.w, 54);

InputDecoration inputDecoration2({
  required String iconImage,
  required String text,
}) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: AppTheme.primaryColor,
        width: 1,
      ),
    ),
    prefixIcon: Padding(
      padding: const EdgeInsets.all(14.0),
      child: ImageIcon(
        AssetImage(iconImage),
        color: AppTheme.primaryColor,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: AppTheme.primaryColor,
        width: 0.5,
      ),
    ),
    labelText: text,
    // labelStyle: AppTextStyles.textSize14With400WeightprimaryColor,
    // floatingLabelStyle: AppTextStyles.textSize14With400WeightprimaryColor,
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: AppTheme.primaryColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: AppTheme.primaryColor,
        width: 1,
      ),
    ),
    fillColor: AppTheme.white,
    errorStyle: GoogleFonts.poppins(
      fontSize: 16.0,
    ),
  );
}

// PinTheme pinTheme() {
//   return PinTheme(
//     shape: PinCodeFieldShape.box,
//     borderWidth: 0.5,
//     disabledColor: AppTheme.white,
//     errorBorderColor: AppTheme.red,
//     activeColor: AppTheme.primaryColor,
//     inactiveFillColor: AppTheme.white,
//     selectedFillColor: AppTheme.white,
//     borderRadius: BorderRadius.circular(10),
//     fieldHeight: 45,
//     fieldWidth: 45,
//     inactiveColor: AppTheme.primaryColor,
//     selectedColor: AppTheme.primaryColor,
//     activeFillColor: AppTheme.white,
//   );
// }

// customToast({
//   required text,
//   required isLong,
// }) {
//   return Fluttertoast.showToast(
//     msg: text,
//     toastLength: isLong ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: AppTheme.toastGrey,
//     textColor: Colors.white,
//     fontSize: 16.0,
//   );
// }
//
// dynamic loading(
//     {@required bool? value, String? title, bool closeOverlays = false}) {
//   if (value!) {
//     EasyLoading.instance
//       ..indicatorType = EasyLoadingIndicatorType.ring
//       ..maskColor = AppTheme.primaryColor.withOpacity(.2)
//
//       /// custom style
//       ..loadingStyle = EasyLoadingStyle.custom
//       ..progressColor = AppTheme.primaryColor
//       ..indicatorColor = AppTheme.primaryColor
//       ..backgroundColor = AppTheme.white
//       ..textColor = AppTheme.black
//       ..textStyle = GoogleFonts.poppins(fontWeight: FontWeight.w500)
//
//       ///
//       ..userInteractions = false
//       ..animationStyle = EasyLoadingAnimationStyle.offset
//       ..dismissOnTap = false;
//     EasyLoading.show(
//       maskType: EasyLoadingMaskType.custom,
//       status: "Loading...",
//       dismissOnTap: false,
//     );
//   } else {
//     EasyLoading.dismiss();
//   }
// }
