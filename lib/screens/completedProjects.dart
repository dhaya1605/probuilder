import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets.dart';

class completed extends StatefulWidget {
  @override
  _completedState createState() => _completedState();
}

class _completedState extends State<completed> {
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: mheight * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            "Completed Projects",
            style: GoogleFonts.breeSerif(
              color: secondary,
              fontSize: mwidth * 0.05,
            ),
          ),
        ),
        SizedBox(
          height: mheight*0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: mheight * 0.3,
              width: mwidth * 0.45,
              decoration: nMbox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: mheight*0.15,
                    width: mwidth*0.37,
                    decoration: nMboxInvert,
                  ),
                  SizedBox(
                    height: mheight*0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            "Bridge Construction ",
                            style: GoogleFonts.play(
                              fontSize: mwidth * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Text("Area"),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Chip(
                    backgroundColor: Colors.green.withOpacity(0.5),
                    label: Text('Jun2020'),
                  )
                ],
              ),
            ),
            Container(
              height: mheight * 0.3,
              width: mwidth * 0.45,
              decoration: nMbox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: mheight*0.15,
                    width: mwidth*0.37,
                    decoration: nMboxInvert,
                  ),
                  SizedBox(
                    height: mheight*0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            "Bridge Construction ",
                            style: GoogleFonts.play(
                              fontSize: mwidth * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Text("Area"),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Chip(
                    backgroundColor: Colors.green.withOpacity(0.5),
                    label: Text('Jun2020'),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: mheight*0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: mheight * 0.3,
              width: mwidth * 0.45,
              decoration: nMbox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: mheight*0.15,
                    width: mwidth*0.37,
                    decoration: nMboxInvert,
                  ),
                  SizedBox(
                    height: mheight*0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            "Bridge Construction ",
                            style: GoogleFonts.play(
                              fontSize: mwidth * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Text("Area"),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Chip(
                    backgroundColor: Colors.green.withOpacity(0.5),
                    label: Text('Jun2020'),
                  )
                ],
              ),
            ),
            Container(
              height: mheight * 0.3,
              width: mwidth * 0.45,
              decoration: nMbox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: mheight*0.15,
                    width: mwidth*0.37,
                    decoration: nMboxInvert,
                  ),
                  SizedBox(
                    height: mheight*0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            "Bridge Construction ",
                            style: GoogleFonts.play(
                              fontSize: mwidth * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Text("Area"),
                  SizedBox(
                    height: mheight * 0.01,
                  ),
                  Chip(
                    backgroundColor: Colors.green.withOpacity(0.5),
                    label: Text('Jun2020'),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
