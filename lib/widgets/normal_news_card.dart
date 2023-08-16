import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NormalNewsCard extends StatelessWidget {
  final String titleText;
  final String timeText;
  final ImageProvider<Object>? imagePath;
  final List<Widget> categoryList;
  const NormalNewsCard({required this.categoryList,required this.imagePath,required this.timeText,required this.titleText,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w,right: 13.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130.w,
            height: 90.h,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: imagePath??const NetworkImage("https://placehold.co/600x400?text=No+Source+image"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
            ),
          ),
          SizedBox(width: 20.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  children: categoryList
              ),
              SizedBox(height: 5.h,),
              Text(
                titleText,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(

                  color: Color(0xFF0F0E0E),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5.h,),

              Text(
                timeText,
                overflow: TextOverflow.ellipsis,
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
