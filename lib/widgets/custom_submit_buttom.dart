import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSubmitButton extends StatelessWidget {
  final String buttonText;
  const CustomSubmitButton({required this.buttonText,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 42.h,
      decoration: ShapeDecoration(
        color: Color(0xFFF1582C),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r)),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
