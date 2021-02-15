import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets.dart';
class teamList extends StatefulWidget {
  @override
  _teamListState createState() => _teamListState();
}

class _teamListState extends State<teamList> {
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
            "Team Members",
            style: GoogleFonts.breeSerif(
              color: secondary,
              fontSize: mwidth * 0.05,
            ),
          ),
        ),
        SizedBox(
          height: mheight*0.03,
        ),
        Container(
          width: mwidth*0.8,
          height: mheight*0.1,
          decoration: nMbox,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: secondary,
                radius: mwidth*0.05,
              ),
              Container(
                width: mwidth*0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name",style: GoogleFonts.fredokaOne(color: Colors.black,fontSize: mheight*0.02),),
                    Text("Title",style: GoogleFonts.fredokaOne(color: secondary,fontSize: mheight*0.015),),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mheight*0.02,
        ),
        Container(
          width: mwidth*0.8,
          height: mheight*0.1,
          decoration: nMbox,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: secondary,
                radius: mwidth*0.05,
              ),
              Container(
                width: mwidth*0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name",style: GoogleFonts.fredokaOne(color: Colors.black,fontSize: mheight*0.02),),
                    Text("Title",style: GoogleFonts.fredokaOne(color: secondary,fontSize: mheight*0.015),),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mheight*0.02,
        ),
        Container(
          width: mwidth*0.8,
          height: mheight*0.1,
          decoration: nMbox,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: secondary,
                radius: mwidth*0.05,
              ),
              Container(
                width: mwidth*0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name",style: GoogleFonts.fredokaOne(color: Colors.black,fontSize: mheight*0.02),),
                    Text("Title",style: GoogleFonts.fredokaOne(color: secondary,fontSize: mheight*0.015),),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mheight*0.02,
        ),
        Container(
          width: mwidth*0.8,
          height: mheight*0.1,
          decoration: nMbox,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: secondary,
                radius: mwidth*0.05,
              ),
              Container(
                width: mwidth*0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name",style: GoogleFonts.fredokaOne(color: Colors.black,fontSize: mheight*0.02),),
                    Text("Title",style: GoogleFonts.fredokaOne(color: secondary,fontSize: mheight*0.015),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
