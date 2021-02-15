import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets.dart';

class newProject extends StatefulWidget {
  @override
  _newProjectState createState() => _newProjectState();
}

class _newProjectState extends State<newProject>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int currentStep = 0;
  bool complete = false;
  DateTime selectedDate = DateTime.now();



  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }



  goTo(int step) {
    setState(() => currentStep = step);
  }
  next() {
    currentStep + 1 != 3
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  BoxDecoration nMbox2 = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      // gradient: LinearGradient(
      //   begin: Alignment.topLeft,
      //   end:Alignment.bottomRight,
      //   colors:[mC,mCL],
      // ),
      color: secondary,
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
      ]
  );






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
    List<Step> steps = [
      Step(
        title: const Text('New Account'),
        isActive: true,
        state: StepState.complete,
        content: Column(
          children: <Widget>[
            Container(
              width: mwidth * 0.8,
              height: mheight * 0.07,
              decoration: nMboxInvert,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter the Project Name",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mheight*0.02,
            ),
            Container(
              width: mwidth * 0.8,
              height: mheight * 0.07,
              decoration: nMboxInvert,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter the Area Name",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Step(
        isActive: false,
        state: StepState.editing,
        title: const Text('Address'),
        content: Column(
          children: <Widget>[
            Container(
              width: mwidth * 0.8,
              height: mheight * 0.07,
              decoration: nMboxInvert,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: mwidth * 0.6,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter the End Date",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: mwidth * 0.1,
                      child: IconButton(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: Icon(Icons.calendar_today),
                        color: secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: mheight*0.02,
            ),
            Container(
              width: mwidth * 0.8,
              height: mheight * 0.07,
              decoration: nMboxInvert,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: mwidth * 0.6,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter the End Date",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: mwidth * 0.1,
                      child: IconButton(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: Icon(Icons.calendar_today),
                        color: secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      Step(
        state: StepState.editing,
        title: const Text('Avatar'),
        // subtitle: const Text("Error!"),
        content: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.red,
            )
          ],
        ),
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: mheight * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            "Create New task",
            style: GoogleFonts.breeSerif(
              color: secondary,
              fontSize: mwidth * 0.05,
            ),
          ),
        ),
        Expanded(
          child: Theme(
          data: ThemeData(
            primaryColor: secondary,
            buttonColor: secondary,
          ),
            child: Stepper(
              controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: onStepContinue,
                        child: Container(
                          width: mwidth*0.2,
                          height: mheight*0.05,
                          decoration: nMbox2,
                          child: Center(child: const Text('Next',style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      SizedBox(
                        width: mwidth*0.05,
                      ),
                      GestureDetector(
                        onTap: onStepCancel,
                        child: Container(
                          width: mwidth*0.2,
                          height: mheight*0.05,
                          decoration: nMbox,
                          child: Center(child: const Text('Cancel',style: TextStyle(color: Colors.black),)),
                        ),
                      ),

                    ],
                  ),
                );
              },
              steps: steps,
              currentStep: currentStep,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
            ),
          ),
        ),
      ],
    );
  }
}
