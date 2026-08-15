import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';
import 'SignUp_screen.dart';

class Signscreen extends StatefulWidget {
  const Signscreen({super.key});

  @override
  State<Signscreen> createState() => _SignscreenState();
}

class _SignscreenState extends State<Signscreen> {
  bool isobscure =true;
  TextEditingController emailControler =TextEditingController();
      TextEditingController passwordControler =TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: EdgeInsets.only(left:30.w ,right: 30.w),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 162.h),
      Text("Hello !",style: GoogleFonts.merriweather(fontSize: 30.sp,
          fontWeight:FontWeight.w400 ,
          color: Color(0xff909090))),
      SizedBox(height: 10.h),
      Text("WELCOME BACK",style: GoogleFonts.merriweather(fontSize: 24.sp,
          fontWeight:FontWeight.w700 ,
          letterSpacing: 2,
          color: Colors.black)),
      SizedBox(height: 58.h),
      TextField(
        controller: emailControler,
        decoration: InputDecoration(
          label: Text("Email ",
            style:GoogleFonts.nunitoSans(fontSize: 14.sp
              ,fontWeight:FontWeight.w400,
              color: Color(0xff808080),
              height: 1,

            ) ,
          ),
        ),
      ),
      SizedBox(height: 35.h),
      TextField(
        controller: passwordControler,
        obscureText: isobscure,
        decoration: InputDecoration(
            label:  Text("Password ",
              style:GoogleFonts.nunitoSans(fontSize: 14.sp
                ,fontWeight:FontWeight.w400,
                color: Color(0xff808080),
                height: 1,

              ) ,

            ),
          suffixIcon:IconButton(onPressed: (){
            setState(() {
              isobscure =!isobscure;
            });
          }, icon:Icon(isobscure?Icons.visibility_off : Icons.visibility)  ),
        ),
      ),
      SizedBox(height: 35.h),
      Center(
        child: TextButton(onPressed: (){}, child: Text("Forgot Password", style:
        GoogleFonts.nunitoSans(fontSize: 18.sp
          ,fontWeight:FontWeight.w600,
          color: Color(0xff303030),
          height: 1,))),
      ),
      SizedBox(height: 40.h),
      Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(),
          ),
          );

        },style:ElevatedButton.styleFrom(
          fixedSize: Size(285.w, 50.h),
          backgroundColor: Colors.black,
         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)


        ) , child: Text("Log in",style:
        GoogleFonts.nunitoSans(fontSize: 18.sp,
          fontWeight:FontWeight.w600 ,
          color: Colors.white,)),),
      ),
      SizedBox(height: 30.h),
      Center(
        child: TextButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen(),
          ),
          );}, child: Text("SIGN UP", style:
        GoogleFonts.nunitoSans(fontSize: 18.sp
          ,fontWeight:FontWeight.w600,
          color: Color(0xff303030),
          height: 1,))),
      ),






    ],
  ),
),
    );
  }
}
