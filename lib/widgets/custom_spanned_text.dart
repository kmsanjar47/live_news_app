import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSpannedText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const CustomSpannedText({required this.firstText,required this.secondText,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(
              color: Color(0xFF494949),
              fontSize: 13.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              color: Color(0xFFF1582C),
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
