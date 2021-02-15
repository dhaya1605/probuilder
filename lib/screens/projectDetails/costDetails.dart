import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:probuilder/screens/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class costDetail extends StatefulWidget {
  @override
  _costDetailState createState() => _costDetailState();
}

class _costDetailState extends State<costDetail> {
  Color Color1 = Color(0xffEC6EAD).withOpacity(0.8);
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
            Center(
              child: Container(
                height: mheight*0.2,
                width: mwidth*0.9,
                decoration: box_cost,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text("\u20B91000",
                          style: GoogleFonts.breeSerif(
                            fontSize: mheight*0.05,
                            fontWeight: FontWeight.bold,
                            color: secondary.withOpacity(0.7)
                          ),
                          ),
                          Text("Overall cost",
                            style: GoogleFonts.breeSerif(
                                fontSize: mheight*0.02,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("\u20B91000",
                              style: GoogleFonts.breeSerif(
                                  fontSize: mheight*0.03,
                                  fontWeight: FontWeight.bold,
                                  color: secondary.withOpacity(0.7)
                              ),
                            ),
                            Text("Ysterday's Acc.Bal",
                              style: GoogleFonts.breeSerif(
                                  fontSize: mheight*0.015,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("\u20B91000",
                              style: GoogleFonts.breeSerif(
                                  fontSize: mheight*0.03,
                                  fontWeight: FontWeight.bold,
                                  color: secondary.withOpacity(0.7)
                              ),
                            ),
                            Text("Today's Acc.Bal",
                              style: GoogleFonts.breeSerif(
                                  fontSize: mheight*0.015,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: mheight*0.02,
            ),
          Container(
            width: mwidth*0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: mwidth*0.1,
                ),
                Text("Today's Cost",style: GoogleFonts.breeSerif(
                    color: secondary,
                    fontSize: mwidth * 0.05,
                  ),),
                Container(
                  height: mheight*0.05,
                  width: mwidth*0.1,
                  decoration: nMbtn,
                  child: Icon(Icons.calendar_today,
                    color: Color1,
                  ),
                ),
              ],
            ),
          ),
            SizedBox(
              height: mheight*0.02,
            ),
            Column(
              children: [
                Container(
                  width: mwidth*0.9,
                  height: mheight*0.1,
                  decoration: nMbox,
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.fastfood_outlined),
                      title: Text("Tea",style: GoogleFonts.breeSerif(
                        color: secondary,
                        fontSize: mwidth * 0.05,
                      ),),
                      subtitle: Text("1:00 pm"),
                      trailing: Text("\u20B950",style: GoogleFonts.breeSerif(
                        color: secondary,
                        fontSize: mwidth * 0.05,
                      ),),
                    ),
                  )
                ),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffEC6EAD).withOpacity(0.5),
        child: Icon(Icons.add),
        onPressed: ()
        {
          showDialog(context: context, builder: (BuildContext context) => Scaffold(

            backgroundColor: Colors.white.withOpacity(0),
            body: dialog(),
          ));
        },
      ),
    );
  }
}

class dialog extends StatefulWidget {

  @override
  _dialogState createState() => _dialogState();
}

class _dialogState extends State<dialog> {
  Color Color1 = Color(0xffEC6EAD).withOpacity(0.8);
  var date;
  var time;
  var desc;
  List<String> options = <String>['Food', 'Tools', 'Labour Charge','Vehicles'];
  String dropdownValue = 'Food';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = DateTime.now().hour.toString()+":"+DateTime.now().minute.toString();
  }

  @override
  Widget build(BuildContext context) {
    var mWidth = MediaQuery.of(context).size.width;
    var mHeight = MediaQuery.of(context).size.height;
    return Center(

        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: mC,

                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Text("New Note",style: TextStyle(
                          fontSize: mHeight*0.02,
                          fontWeight: FontWeight.bold,
                          color: Color1,
                        ),),
                      ),
                      Container(
                        height: mHeight * 0.07,
                        width: mWidth * 0.75,
                        decoration: nMboxInvert,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: mWidth*0.7,
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              value: dropdownValue,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              style: TextStyle(color: Colors.blue),
                              selectedItemBuilder: (BuildContext context) {
                                return options.map((String value) {
                                  return Text(
                                    dropdownValue,
                                    style: TextStyle(color: secondary),
                                  );
                                }).toList();
                              },
                              items: options.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: mWidth * 0.75,
                        height: mHeight * 0.07,
                        decoration: nMboxInvert,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: secondary),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Title",
                              hintStyle: TextStyle(
                                color: Color1.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: nMboxInvert,
                        height: mHeight*0.1,
                        width: mWidth*0.75,
                        child: Scrollbar(
                          child: new SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            reverse: false,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: new TextField(
                                style: TextStyle(
                                  color: secondary,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    //ADesc = value;
                                    desc = value;
                                  });
                                },
                                maxLines: null,
                                decoration: InputDecoration(
                                  hintText: "Description",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color1.withOpacity(0.4),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: mWidth * 0.35,
                            height: mHeight * 0.07,
                            decoration: nMboxInvert,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                style: TextStyle(color: secondary),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Price",
                                  hintStyle: TextStyle(
                                    color: Color1.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: mWidth * 0.35,
                            height: mHeight * 0.07,
                            decoration: nMboxInvert,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                style: TextStyle(color: secondary),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "GST",
                                  hintStyle: TextStyle(
                                    color: Color1.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: mWidth * 0.5,
                        height: mHeight * 0.07,
                        decoration: nMboxInvert,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: TextStyle(color: secondary),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Total price",
                              hintStyle: TextStyle(
                                color: Color1.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ),





                    ],
                  ),
                ),
              ),
              Positioned(
                top: -10,
                left: -10,
                child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                        radius: 15.0,
                        child: Icon(Icons.clear))),
              ),
            ],
          ),
        ),

    );
  }
}