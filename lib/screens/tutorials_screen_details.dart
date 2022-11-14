import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/images.dart';
import '../widgets/appbar.dart';

class FullTurotialPage extends StatefulWidget {
  const FullTurotialPage({Key? key}) : super(key: key);

  @override
  State<FullTurotialPage> createState() => _FullTurotialPageState();
}

class _FullTurotialPageState extends State<FullTurotialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              children: [
                appBar1("Tutorial"),
                addHeight(56.h),
                Text(
                  "Chapter One - What is Forex?",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                addHeight(48.h),
                Container(
                  height: 200.h,
                  width: 348.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Ig.newsIMg))),
                ),
                addHeight(38.h),
                Text(
                  "The GBP/USD pair builds on the previous day's recovery move from the vicinity of mid-1.1300s, or its lowest level since 1985 and edges higher through the first half of trading on Tuesday. The pair stick to modest intraday gains through the early European session, though seems to struggle to capitalize on the move beyond mid-1.1400s and retreats a few pips from the daily peak.",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                addHeight(20.h),
                Text(
                  " A combination of factors assists the US dollar to attract some dip-buying following an early slide to a one-week low, which, in turn, acts as a headwind for the GBP/USD pair. Expectations that the Federal Reserve will stick to its faster rate-hiking cycle to tame inflation remain supportive of elevated US Treasury bond yields. In fact, the US central bank is widely expected to deliver another supersized 75 bps rate hike at the end of a two-day meeting on Wednesday.",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
