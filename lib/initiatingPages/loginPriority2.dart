import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:probuilder/screens/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probuilder/screens/home.dart';

class loginPriority2 extends StatefulWidget {
  @override
  _loginPriority2State createState() => _loginPriority2State();
}

class _loginPriority2State extends State<loginPriority2> {
  bool password_visible = true;
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: mwidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: mheight*0.1,
              ),
              Text("Login",style: GoogleFonts.breeSerif(
                color: secondary,
                fontSize: mheight*0.04,
              ),),
              SizedBox(
                height: mheight*0.02,
              ),
              Container(
                width: mwidth*0.5,
                height: mheight*0.2,
                child: Image(image: AssetImage('images/loginIcon.png'),),
              ),
              SizedBox(
                height: mheight*0.02,
              ),
              Container(
                height: mheight*0.07,
                width: mwidth*0.75,
                decoration: nMboxInvert2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: secondary),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "User Id",
                      hintStyle: TextStyle(
                        color: primary2.withOpacity(0.5),
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(
                height: mheight*0.02,
              ),
              Container(
                  height: mheight*0.07,
                  width: mwidth*0.75,
                  decoration: nMboxInvert2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: TextFormField(
                            style: TextStyle(color: secondary),
                            decoration: InputDecoration(
                              border:InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: primary2.withOpacity(0.5),
                              ),
                            ),
                            obscureText: password_visible,
                          ),
                          width: mwidth*0.6,
                        ),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                password_visible = !password_visible;
                              });
                            },
                            child: Icon(Icons.remove_red_eye,color: secondary,)),
                      ],
                    ),
                  )
              ),
              SizedBox(
                height: mheight*0.02,
              ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                  },
                child: Container(
                    height: mheight*0.07,
                    width: mwidth*0.75,
                    decoration: nMbox,
                    child: Center(
                      child: Text("Sign In",style: GoogleFonts.breeSerif(
                        color: primary2,
                        fontSize: mheight*0.03,
                      ),),
                    )
                ),
              ),
              SizedBox(
                height: mheight*0.15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}