import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NormalNewsCard extends StatelessWidget {
  final String titleText;
  final String timeText;
  final String imagePath;
  final List<Widget> categoryList;
  const NormalNewsCard({required this.categoryList,required this.imagePath,required this.timeText,required this.titleText,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w,right: 13.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130,
            height: 90,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
          SizedBox(width: 20.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h,),
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
              SizedBox(height: 5.h,),

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

        ],),
    );
  }
}
