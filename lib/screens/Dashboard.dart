import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:probuilder/screens/newProject.dart';
import 'package:probuilder/screens/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probuilder/screens/projectDetails/projectDetail.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  // TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return
       Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: mheight * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "Ongoing tasks",
              style: GoogleFonts.breeSerif(
                color: secondary,
                fontSize: mwidth * 0.05,
              ),
            ),
          ),
          SizedBox(
            height: mheight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: mwidth*0.4,
                height: mheight*0.1,
                decoration: nMbox,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No.of Projects",style: GoogleFonts.breeSerif(
                        color: primary2,
                        fontSize: mwidth * 0.04,
                      ),),
                      SizedBox(
                        height: mheight*0.01,
                      ),
                      Text("1",style: GoogleFonts.breeSerif(
                        color: secondary,
                        fontSize: mwidth * 0.05,
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: mwidth*0.05,
              ),
              Container(
                width: mwidth*0.4,
                height: mheight*0.1,
                decoration: nMbox,
                child: Center(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total Cost",style: GoogleFonts.breeSerif(
                        color: primary2,
                        fontSize: mwidth * 0.04,
                      ),),
                      SizedBox(
                        height: mheight*0.01,
                      ),
                      Text("1 Cr",style: GoogleFonts.breeSerif(
                        color: secondary,
                        fontSize: mwidth * 0.05,
                      ),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: mheight*0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>projectDashboard()));
                },
                child: Container(
                  height: mheight * 0.25,
                  width: mwidth * 0.85,
                  decoration: nMbox,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bridge Construction ",
                            style: GoogleFonts.play(
                              fontSize: mwidth * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mheight * 0.01,
                      ),
                      Text("Area"),
                      SizedBox(
                        height: mheight * 0.02,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: mwidth * 0.07,
                              ),
                              Text("Progress"),
                            ],
                          ),
                          SizedBox(
                            height: mheight * 0.01,
                          ),
                          Container(
                            width: mwidth * 0.7,
                            height: mheight * 0.015,
                            decoration: nMboxInvert,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
                                        colors: [
                                          // const Color(0xffff9933),
                                          // const Color(0xffff6600)
                                          primary1,
                                          primary2
                                        ]),
                                    borderRadius: BorderRadius.circular(10.0),
                                    // color: Colors.deepOrange,
                                  ),
                                  width: mwidth * 0.2 * 0.7,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: mheight * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("20%"),
                              SizedBox(
                                width: mwidth * 0.07,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Chip(
                        backgroundColor: primary2.withOpacity(0.5),
                        avatar: CircleAvatar(
                          backgroundColor: secondary.withOpacity(1),
                          child: Text('10',style: TextStyle(color: Colors.white),),
                        ),
                        label: Text('Members'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: mheight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: mheight * 0.25,
                width: mwidth * 0.85,
                decoration: nMbox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Road Construction ",
                          style: GoogleFonts.play(
                            fontSize: mwidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: mheight * 0.01,
                    ),
                    Text("Area"),
                    SizedBox(
                      height: mheight * 0.02,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: mwidth * 0.07,
                            ),
                            Text("Progress"),
                          ],
                        ),
                        SizedBox(
                          height: mheight * 0.01,
                        ),
                        Container(
                          width: mwidth * 0.7,
                          height: mheight * 0.015,
                          decoration: nMboxInvert,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
                                      colors: [
                                        // const Color(0xffff9933),
                                        // const Color(0xffff6600)
                                        primary1,
                                        primary2
                                      ]),
                                  borderRadius: BorderRadius.circular(10.0),
                                  // color: Colors.deepOrange,
                                ),
                                width: mwidth * 0.5 * 0.7,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: mheight * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("50%"),
                            SizedBox(
                              width: mwidth * 0.07,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Chip(
                      backgroundColor: primary2.withOpacity(0.5),
                      avatar: CircleAvatar(
                        backgroundColor: secondary.withOpacity(1),
                        child: Text('10',style: TextStyle(color: Colors.white),),
                      ),
                      label: Text('Members'),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      );

  }
}
