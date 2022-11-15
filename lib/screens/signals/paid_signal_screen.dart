import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/utils/images.dart';
import 'package:pinndip/widgets/appbar.dart';
import 'package:pinndip/widgets/other_widgets.dart';

class PaidSignalScreen extends StatefulWidget {
  const PaidSignalScreen({Key? key}) : super(key: key);

  @override
  State<PaidSignalScreen> createState() => _PaidSignalScreenState();
}

class _PaidSignalScreenState extends State<PaidSignalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Ig.subscriptionBackground),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              addHeight(67.h),
              Container(
                  height: 294.h,
                  width: 289.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.ruppeIcon), fit: BoxFit.cover))),
              addHeight(59.h),
              Text(
                "Subscription Required",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              addHeight(10.h),
              Text(
                "You need to subscribe to access the signals",
                style: GoogleFonts.sourceSansPro(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              addHeight(45.h),
              commonButton1("Get Signals Access", () {})
            ],
          ),
        ),
      ),
    );
  }
}
