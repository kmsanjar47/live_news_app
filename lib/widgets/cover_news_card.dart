import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_chip.dart';
class CoverNewsCard extends StatelessWidget {
  final bool isRounded;
  final String titleText;
  final String mainText;
  final String timeText;
  final String imagePath;
  final List<Widget> categoryList;
  const CoverNewsCard({required this.isRounded,required this.categoryList,required this.imagePath,required this.mainText,required this.timeText,required this.titleText,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 390.w,
          height: 200.h,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(borderRadius: isRounded!=false?BorderRadius.circular(5.r):BorderRadius.circular(0)),
          ),

        ),
        SizedBox(height: 10.h,),
        Padding(

          padding: isRounded==false?EdgeInsets.only(left: 16.0.w,right: 13.w):EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: categoryList
              ),
              SizedBox(height: 5.h,),
              Text(
                titleText,
                style: TextStyle(
                  color: Color(0xFF0F0E0E),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 3.h,),
              Text(
               mainText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.sp,

                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 3.h,),
              Text(
                timeText,
                style: TextStyle(
                  color: Color(0xFF494949),
                  fontSize: 9.sp,

                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ),

      ],);
  }
}
