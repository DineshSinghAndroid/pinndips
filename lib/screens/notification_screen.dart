import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/widgets/appbar.dart';

import '../utils/images.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Ig.pricingPlanBackground),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              appBar1("Notification"),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 386.w,
                      height: 109.h,
                      margin: EdgeInsets.symmetric(vertical: 20.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          color: Color(0xff333751),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You received a new signal from PipnDip welcome to pindip",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                          Text(
                            "10.40 AM",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
