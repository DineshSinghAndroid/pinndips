import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (b, i) {
          return GestureDetector(
            onTap: () {},
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
                                height: 140,
                                width: MediaQuery.of(context).size.width - 90,
                                fit: BoxFit.fill,
                              )),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 38),
                            child: Icon(
                              Icons.play_circle_outlined,
                              size: 64,
                              color: Colors.white,
                            ),
                          )),
                      Positioned(
                        right: 10,
                        bottom: 5,
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 11, right: 11, top: 9, bottom: 9),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              // border: Border.all(
                              //   color: Colors.red[500],
                              // ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(11))),
                          child: Center(
                              child: Text(
                            "20 min",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 13),
                          )),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 17),
                          child: Text(
                            "Support & Resistance Basics",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
