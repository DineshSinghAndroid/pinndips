import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinndip/routers/my_router.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (b, i) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(MyRouter.fullTurotialPage);
            },
            child: Container(
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xFF333751),
                  // border: Border.all(
                  //   color: Colors.red[500],
                  // ),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(11.0),
                              child: Image.asset(
                                "assets/images/news1.png",
                                height: 165,
                                width: MediaQuery.of(context).size.width - 90,
                                fit: BoxFit.fill,
                              )),
                        ],
                      ),
                      Positioned(
                          bottom: 0,
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/totorialButtom.png",
                                height: 57,
                                width: MediaQuery.of(context).size.width - 90,
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 8, right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("What is the forex terminology",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 14)),
                                    Text("What is the forex terminology",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white, fontSize: 11)),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
