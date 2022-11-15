import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routers/my_router.dart';
import '../../utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/utils/colors.dart';
import 'package:pinndip/utils/images.dart';
import 'package:pinndip/widgets/appbar.dart';
import 'package:pinndip/widgets/other_widgets.dart';

class FreeSignalsScreen extends StatefulWidget {
  const FreeSignalsScreen({Key? key}) : super(key: key);

  @override
  State<FreeSignalsScreen> createState() => _FreeSignalsScreenState();
}

class _FreeSignalsScreenState extends State<FreeSignalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffloadColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              addHeight(70.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(MyRouter.freeSignalFullDetailsSreen);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.freeSignalImgContainer))),
                  height: 258.h,
                  width: 383.w,
                ),
              ),
              addHeight(45.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(MyRouter.freeSignalFullDetailsSreen);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.freeSignalImgContainer))),
                  height: 258.h,
                  width: 383.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
