import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryChip extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String centerText;
  const CategoryChip({required this.backgroundColor,required this.centerText,required this.textColor,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.w,

      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Center(
        child: Text(
          centerText,
          style: TextStyle(
            color:textColor,
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
