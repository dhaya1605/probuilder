import 'package:flutter/material.dart';
import 'package:probuilder/screens/projectDetails/costDetails.dart';
import 'package:probuilder/screens/projectDetails/siteDetails.dart';
import 'package:probuilder/screens/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class projectDashboard extends StatefulWidget {
  @override
  _projectDashboardState createState() => _projectDashboardState();
}

class _projectDashboardState extends State<projectDashboard> {
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: secondary),
        title: Text('Project Name',style: GoogleFonts.breeSerif(
          color: secondary,
          fontSize: mwidth * 0.05,
        ),),
        backgroundColor: Colors.grey.shade100,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: mheight*0.02,
            ),
            Container(
              width: mwidth*0.4,
              height: mheight*0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                  color: mC,
                  boxShadow: [
                    BoxShadow(
                      color: mCD,
                      offset: Offset(10, 10),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: mCL,
                      offset: Offset(-10, -10),
                      blurRadius: 10,
                    ),
                  ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("100",style: GoogleFonts.breeSerif(
                          fontSize: mheight*0.05,
                          color: primary2
                        ),),
                        Text("%",style: GoogleFonts.breeSerif(
                          fontSize: mheight*0.02,
                          color: secondary,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 0.02,
                    ),
                    Text("Completed",style: GoogleFonts.breeSerif(
                      color: secondary,
                      fontSize: mwidth * 0.03,
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: mheight*0.02,
            ),
            Container(
              height: mheight*0.2,
              width: mwidth*0.85,
              decoration: nMbox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                      height: mheight*0.1,
                        width: mwidth*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Start date",style: GoogleFonts.breeSerif(
                              color: secondary,
                              fontSize: mwidth * 0.04,
                            ),),
                            Text("16-05-2000",style: GoogleFonts.breeSerif(
                              color: primary2,
                              fontSize: mwidth * 0.05,
                            ),),
                          ],
                        ),
                    ),
                      Container(
                        height: mheight*0.1,
                        width: mwidth*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("End date",style: GoogleFonts.breeSerif(
                              color: secondary,
                              fontSize: mwidth * 0.04,
                            ),),
                            Text("16-05-2000",style: GoogleFonts.breeSerif(
                              color: primary2,
                              fontSize: mwidth * 0.05,
                            ),),
                          ],
                        ),
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: mheight*0.1,
                        width: mwidth*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Spent",style: GoogleFonts.breeSerif(
                              color: secondary,
                              fontSize: mwidth * 0.04,
                            ),),
                            Text("2000",style: GoogleFonts.breeSerif(
                              color: primary2,
                              fontSize: mwidth * 0.05,
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        height: mheight*0.1,
                        width: mwidth*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Estimated",style: GoogleFonts.breeSerif(
                              color: secondary,
                              fontSize: mwidth * 0.04,
                            ),),
                            Text("2000",style: GoogleFonts.breeSerif(
                              color: primary2,
                              fontSize: mwidth * 0.05,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       height: mheight*0.1,
            //       width: mwidth*0.4,
            //       decoration: nMboxInvert,
            //     ),
            //     Container(
            //       height: mheight*0.1,
            //       width: mwidth*0.4,
            //       decoration: nMboxInvert,
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: mheight*0.02,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       height: mheight*0.1,
            //       width: mwidth*0.4,
            //       decoration: nMboxInvert,
            //     ),
            //     Container(
            //       height: mheight*0.1,
            //       width: mwidth*0.4,
            //       decoration: nMboxInvert,
            //     ),
            //   ],
            // ),
            SizedBox(
              height: mheight*0.02,
            ),
            // Container(
            //   width: mwidth*0.8,
            //   height: mheight*0.15,
            //   decoration:box_attendance,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>costDetail()));
                  },
                  child: Container(
                    width: mwidth*0.4,
                    height: mheight*0.2,
                    decoration:nMbox,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.monetization_on_outlined,
                          color: primary2,
                          size: mheight*0.1,
                        ),
                        Text("Cost Management",style: GoogleFonts.breeSerif(
                          color: secondary,
                          fontSize: mwidth * 0.04,
                        ),),
                      ],
                    ),

                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: mwidth*0.4,
                    height: mheight*0.2,
                    decoration:nMbox,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.book_outlined,
                          color: primary2,
                          size: mheight*0.1,
                        ),
                        Text("Attendance",style: GoogleFonts.breeSerif(
                          color:secondary,
                          fontSize: mwidth * 0.04,
                        ),),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>siteDetails()));
                  },
                  child: Container(
                    width: mwidth*0.4,
                    height: mheight*0.2,
                    decoration:nMbox,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_work_outlined,
                          color: primary2,
                          size: mheight*0.1,
                        ),
                        Text("Site Management",style: GoogleFonts.breeSerif(
                          color: secondary,
                          fontSize: mwidth * 0.04,
                        ),),
                      ],
                    ),

                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: mwidth*0.4,
                    height: mheight*0.2,
                    decoration:nMbox,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.architecture_outlined,
                          color: primary2,
                          size: mheight*0.1,
                        ),
                        Text("Tools Management",style: GoogleFonts.breeSerif(
                          color: secondary,
                          fontSize: mwidth * 0.04,
                        ),),
                      ],
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(
              height: mheight*0.1,
            ),
          ],
        ),
      ),
    );
  }
}
