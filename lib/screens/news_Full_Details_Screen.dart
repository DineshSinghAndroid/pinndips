import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/widgets/appbar.dart';

import '../utils/images.dart';

class NewsFullDetailsScreen extends StatefulWidget {
  const NewsFullDetailsScreen({Key? key}) : super(key: key);

  @override
  State<NewsFullDetailsScreen> createState() => _NewsFullDetailsScreenState();
}

class _NewsFullDetailsScreenState extends State<NewsFullDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101629),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
            child: Column(
              children: [
                appBar1("News"),
                addHeight(20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Greece Current Account \nYoY Climbed \nfromprevoius \$ -0.723B \nto \$1.10B in July",
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    addHeight(12.h),
                    Text(
                      "20 Sept, 2022",
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    addHeight(49.h),
                    Container(
                      height: 200.h,
                      width: 348.w,
                      decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(Ig.newsIMg))),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
