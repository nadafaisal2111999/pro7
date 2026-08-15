import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
      IconButton(
      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
      icon: FaIcon(FontAwesomeIcons.bars),
          onPressed: () { }
      ),
          SizedBox(width: 90.w),
          Column(
            children: [
              Text("Make home",style: GoogleFonts.gelasio(fontSize: 18.sp,
                fontWeight:FontWeight.w400 ,
                color: Color(0xff909090),
              ),),
              Text("BEAUTIFUL",style: GoogleFonts.gelasio(fontSize: 18.sp,
                fontWeight:FontWeight.w700 ,
                color: Color(0xff303030),
              ),),
            ],
          ),
          SizedBox(width: 35.w),
          IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.cartShopping),
              onPressed: () { }
          ),

        ],
      ),),

    );
  }
}
