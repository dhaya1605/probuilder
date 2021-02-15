import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:probuilder/screens/projectDetails/siteDetailReport/siteDetailReport.dart';
import 'package:probuilder/screens/widgets.dart';
import 'package:google_fonts/google_fonts.dart';



class siteDetails extends StatefulWidget {
  @override
  _siteDetailsState createState() => _siteDetailsState();
}

class _siteDetailsState extends State<siteDetails> {
  Color Color1 = Color(0xff4389A2).withOpacity(0.8);
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:  AppBar(
        iconTheme: IconThemeData(color: secondary),
        title: Text('Cost details',style: GoogleFonts.breeSerif(
          color: secondary,
          fontSize: mwidth * 0.05,
        ),),
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              height: mheight*0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: ()
                  {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>siteDetailReport()));
                  },
                  child: Center(
                    child: Container(
                        width: mwidth*0.9,
                        height: mheight*0.1,
                        decoration: nMbox,
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.note),
                            title: Text("Title",style: GoogleFonts.breeSerif(
                              color: Color1,
                              fontSize: mwidth * 0.05,
                            ),),
                            subtitle: Text("20 May 2020"),
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color1.withOpacity(0.5),
        child: Icon(Icons.add),
        onPressed: ()
        {
          showDialog(context: context, builder: (BuildContext context) => Scaffold(

            backgroundColor: Colors.white.withOpacity(0),
            // body: dialog(),
          ));
        },
      ),
    );
  }
}
