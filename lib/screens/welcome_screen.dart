import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset("assets/img_screen.png",
            height: double.infinity,width:double.infinity ,
            fit: BoxFit.fill,),
          Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 210.h,),
                Text("MAKE YOUR",style: GoogleFonts.gelasio(fontSize: 24.sp,
                  fontWeight:FontWeight.w600 ,
                  color: Color(0xff606060),
                ),),
                SizedBox(height: 15.h,),
                Text("HOME BEAUTIFUL ",style: GoogleFonts.gelasio(fontSize: 30.sp,
                  fontWeight:FontWeight.w700 ,
                  color: Color(0xff303030),
                ),),
                SizedBox(height: 35.h,),

                Padding(
                  padding: EdgeInsets.only(right: 30.w,left: 29.w),
                  child: Text(""" The best simple place where you \ndiscover most wonderful furnitures \n   and make your home beautiful""",
                  style:GoogleFonts.nunitoSans(fontSize: 17.sp
                  ,fontWeight:FontWeight.w400,
                    color: Color(0xff808080),
                    height: 1.75,

                  ) ,
                  ),
                ),
                SizedBox(height: 168.h,),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signscreen(),
                    ),
                    );
                    
                  },style:ElevatedButton.styleFrom(
                    fixedSize: Size(159.w, 54.h),
                        backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                      ,

                  ) , child: Text("Get Started",style:
                  GoogleFonts.gelasio(fontSize: 18.sp,
                      fontWeight:FontWeight.w600 ,
                      color: Colors.white,)),),
                ),


              ],
            ),
          )
        ],
      )
    );
  }
}
