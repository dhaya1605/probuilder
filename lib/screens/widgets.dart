import 'dart:ui';

import 'package:flutter/material.dart';

Color mC = Colors.grey.shade100;
Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.075);
Color mCC = Colors.green.withOpacity(0.65);
Color fCD = Colors.grey.shade700;
Color fCL = Colors.grey;
Color secondary = Colors.indigo[700];
Color primary1 = Colors.orangeAccent[400];
Color primary2 = Colors.orange[800];

BoxDecoration nMbox1 = BoxDecoration(
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

BoxDecoration nMbox = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    // gradient: LinearGradient(
    //   begin: Alignment.topLeft,
    //   end:Alignment.bottomRight,
    //   colors:[mC,mCL],
    // ),
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
    ]
);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL,
          offset: Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3
      ),
    ]
);

BoxDecoration nMboxInvertActive = nMboxInvert.copyWith(color: mCC);

BoxDecoration nMbtn = BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: Offset(2, 2),
        blurRadius: 2,
      )
    ]
);

BoxDecoration box_attendance = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end:Alignment.bottomRight,
      colors:[Color(0xffffd89b).withOpacity(0.5) ,Color(0xff4389A2).withOpacity(0.5)],
    ),
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

BoxDecoration box_cost = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end:Alignment.bottomLeft,
      colors:[Color(0xff3494E6).withOpacity(0.5) ,Color(0xffEC6EAD).withOpacity(0.5)],
    ),
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

BoxDecoration box_cost2 = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end:Alignment.bottomLeft,
      colors:[Color(0xffEC6EAD).withOpacity(0.5),Color(0xfffcb045).withOpacity(0.5) ],
    ),
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

BoxDecoration box_cost3 = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end:Alignment.centerRight,
      colors:[Color(0xff00F260).withOpacity(0.3) ,Color(0xff0575E6).withOpacity(0.3)],
    ),
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

BoxDecoration nMboxInvert2 = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL,
          offset: Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3
      ),
    ]
);