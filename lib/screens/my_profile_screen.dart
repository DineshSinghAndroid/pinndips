import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/routers/my_router.dart';
import 'package:pinndip/widgets/appbar.dart';

import '../utils/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101629),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 10.h),
            child: Column(
              children: [
                appBar1(
                  "Profile",
                ),
                addHeight(70.h),
                Container(
                  height: 126.h,
                  width: 126.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Ig.logoRound))),
                ),
                addHeight(18.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Pip & Dip",
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    addHeight(2.h),
                    Text(
                      "pipanddip@support.com",
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
                addHeight(74.h),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(MyRouter.editProfileScreen);
                      },
                      child: Container(
                        height: 60.h,
                        width: 386.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(Ig.profileContainerImg),
                        )),
                      ),
                    ),
                    addHeight(28.h),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(MyRouter.subscriptionsScreen);
                      },
                      child: Container(
                        height: 60.h,
                        width: 386.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(Ig.profileSubscriptoin),
                        )),
                      ),
                    ),
                    addHeight(28.h),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(MyRouter.changePasswordScreen);
                      },
                      child: Container(
                        height: 60.h,
                        width: 386.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(Ig.profilechangePassword),
                        )),
                      ),
                    ),
                    addHeight(28.h),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60.h,
                        width: 386.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(Ig.logoutimg),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
