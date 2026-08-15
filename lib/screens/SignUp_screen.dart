import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';
import 'SignScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  bool isobscure =true;
  bool isobscure2 =true;
  TextEditingController nameControler =TextEditingController();
  TextEditingController EmailSignControler =TextEditingController();
  TextEditingController passwordSignControler =TextEditingController();
  TextEditingController  ConfirmPasswordControler=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: EdgeInsets.only(left:30.w ,right: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 160.h),
          Text("WELCOME ",style: GoogleFonts.merriweather(fontSize: 24.sp,
              fontWeight:FontWeight.w700 ,
              letterSpacing: 2,
              color: Colors.black)),
          SizedBox(height: 55.h),
          TextField(
            controller: nameControler,
            decoration: InputDecoration(
              label: Text("Name ",
                style:GoogleFonts.nunitoSans(fontSize: 14.sp
                  ,fontWeight:FontWeight.w400,
                  color: Color(0xff808080),
                  height: 1,

                ) ,
              ),
            ),
          ),
          SizedBox(height: 30.h),
          TextField(
            controller: EmailSignControler,
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
          SizedBox(height: 30.h),
          TextField(
            controller: passwordSignControler,
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
          SizedBox(height: 30.h),
          TextField(
            controller: ConfirmPasswordControler,
            obscureText: isobscure2,
            decoration: InputDecoration(
              label:  Text("Confirm Password ",
                style:GoogleFonts.nunitoSans(fontSize: 14.sp
                  ,fontWeight:FontWeight.w400,
                  color: Color(0xff808080),
                  height: 1,

                ) ,

              ),
              suffixIcon:IconButton(onPressed: (){
                setState(() {
                  isobscure2 =!isobscure2;
                });
              }, icon:Icon(isobscure2?Icons.visibility_off : Icons.visibility)  ),
            ),
          ),
          SizedBox(height: 20.h),
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen(),),);
            },style:ElevatedButton.styleFrom(
              fixedSize: Size(285.w, 50.h),
              backgroundColor: Colors.black,
            ),
              child: Text("SIGN UP",style:
            GoogleFonts.nunitoSans(fontSize: 18.sp,
              fontWeight:FontWeight.w600 ,
              color: Colors.white,)),),
          ),
          SizedBox(height: 30.h),
          Center(
            child: Row(
              children: [
                Text("Already have account? ",
            style: GoogleFonts.merriweather(fontSize: 14.sp,
                fontWeight:FontWeight.w600 ,
                color: Color(0xff909090) ),),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signscreen(),
                  ),);
                }, child: Text("SIGN IN", style:
                GoogleFonts.nunitoSans(fontSize: 18.sp
                  ,fontWeight:FontWeight.w600,
                  color: Color(0xff303030),
                  height: 1,))),
              ],
            ),
          )







        ],
      ),
    ),
    );
  }
}
