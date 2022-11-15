import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/screens/praveensir/tutorials_screen.dart';
import 'package:pinndip/screens/praveensir/video_screen.dart';
import 'package:pinndip/screens/signals/paid_signal_screen.dart';

import 'free_signals_screen.dart';

class SignalsScreen extends StatefulWidget {
  const SignalsScreen({Key? key}) : super(key: key);

  @override
  State<SignalsScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<SignalsScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101629),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(),
              padding: EdgeInsets.all(6),
              height: 68,
              decoration: BoxDecoration(
                  color: Colors.black,
                  // border: Border.all(
                  //   color: Colors.red[500],
                  // ),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: selectedIndex == 0
                                  ? Color(0xFF333751)
                                  : Colors.black,
                              // border: Border.all(
                              //   color: Colors.red[500],
                              // ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(11))),
                          child: Center(
                              child: Text(
                            "Free",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: selectedIndex == 1
                                  ? Color(0xFF333751)
                                  : Colors.black,
                              // border: Border.all(
                              //   color: Colors.red[500],
                              // ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(11))),
                          child: Center(
                              child: Text(
                            "Paid",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
                child: selectedIndex == 0
                    ? FreeSignalsScreen()
                    : PaidSignalScreen())
          ],
        ),
      ),
    );
  }
}
