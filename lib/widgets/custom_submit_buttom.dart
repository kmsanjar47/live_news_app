import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSubmitButton extends StatelessWidget {
  final String buttonText;
  void Function() onTap;
  CustomSubmitButton({required this.onTap,required this.buttonText,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
