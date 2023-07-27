import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomServiceButton extends StatelessWidget {
  final String buttonText;
  final Image serviceIcon;
  Gradient? linearGradient;
  CustomServiceButton({required this.buttonText,required this.serviceIcon,this.linearGradient,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 330.w,
        height: 43.h,
        decoration: ShapeDecoration(
          gradient: linearGradient,
        color: linearGradient==null?Color(0xFF4285F4):null,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
    shadows: [
    BoxShadow(
    color: Color(0x19000000),
    blurRadius: 2.r,
    offset: Offset(2.w, 2.h),
    spreadRadius: 0.r,
    )
    ],
        ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 1.w),
            width: 43.w,
            height: 41.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
            ),
            child: Center(child: serviceIcon,),
          ),
          SizedBox(width: 59.w,),
          Text(buttonText,style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),),
        ],
      ),
    );
  }
}
