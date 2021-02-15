import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:probuilder/screens/Dashboard.dart';
import 'package:probuilder/screens/completedProjects.dart';
import 'package:probuilder/screens/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probuilder/screens/newProject.dart';
import 'teamList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white.withOpacity(0.5),
      //   leading: Container(
      //     width: mwidth*0.05,
      //     height: mheight*0.01,
      //     decoration: nMbtn,
      //     child: Icon(Icons.person_rounded,size: mwidth*0.05,color: Colors.amber,),
      //   ),
      //   title: Text("ProBuilder",
      //   style: TextStyle(
      //     fontSize: mwidth*0.05,
      //     color: Colors.blueAccent,
      //   ),),
      //   actions: [
      //     IconButton(
      //         icon: IconButton(
      //
      //       icon: Icon(Icons.more_horiz),
      //       iconSize: mwidth*0.05,
      //     ), onPressed: null)
      //   ],
      //
      // ),
      body: GestureDetector(
        onTap:()=> FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: mheight * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: mwidth * 0.1,
                        height: mheight * 0.05,
                        decoration: nMbtn,
                        child: Icon(
                          Icons.person_rounded,
                          size: mwidth * 0.05,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ),
                    Text(
                      "ProBuilder",
                      style: GoogleFonts.breeSerif(
                        fontSize: mwidth * 0.05,
                        color: secondary,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        width: mwidth * 0.1,
                        height: mheight * 0.05,
                        decoration: nMbtn,
                        child: Icon(
                          Icons.more_horiz,
                          size: mwidth * 0.05,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mheight * 0.03,
              ),
              Container(
                width: mwidth,
                height: mheight * 0.12,
                child: Material(
                  color: Colors.grey.shade100,
                  child: TabBar(
                    indicatorWeight:1,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: secondary,
                    controller: controller,
                    tabs: [
                      Container(
                        width: mwidth * 0.2,
                        height: mheight * 0.1,
                        decoration: nMbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/home.png'),
                            ),
                            SizedBox(
                              height: mwidth * 0.02,
                            ),
                            Text("Home",style: TextStyle(color: Colors.black,fontSize: mwidth*0.025),),
                          ],
                        ),
                      ),
                      Container(
                        width: mwidth * 0.25,
                        height: mheight * 0.1,
                        decoration: nMbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/new.png'),
                            ),
                            SizedBox(
                              height: mwidth * 0.02,
                            ),
                            Text("New",style: TextStyle(color: Colors.black,fontSize: mwidth*0.025),),
                          ],
                        ),
                      ),
                      Container(
                        width: mwidth * 0.2,
                        height: mheight * 0.1,
                        decoration: nMbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/done.png'),
                            ),
                            SizedBox(
                              height: mwidth * 0.02,
                            ),
                            Text("Done",style: TextStyle(color: Colors.black,fontSize: mwidth*0.025),),
                          ],
                        ),
                      ),
                      Container(
                        width: mwidth * 0.2,
                        height: mheight * 0.1,
                        decoration: nMbox,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/person.png'),
                            ),
                            SizedBox(
                              height: mwidth * 0.02,
                            ),
                            Text("Team",style: TextStyle(color: Colors.black,fontSize: mwidth*0.025),),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                height: mheight * 1.5,
                width: mwidth,
                child: TabBarView(
                  controller: controller,
                  children: [
                    home(),
                    newProject(),
                    completed(),
                    teamList(),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
