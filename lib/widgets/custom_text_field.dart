import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textFieldController;
  final String titleText;
  const CustomTextField(this.textFieldController,{required this.hintText,required this.titleText,Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: TextStyle(
            color: Color(0xFF344053),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          width: 330.w,
          height: 42.h,
          decoration: ShapeDecoration(
            color: Color(0xFFF9F9F9),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.25.w,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xFFD9D9D9),
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          child: TextField(
            controller: textFieldController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              suffixIcon: Image.asset(
                "assets/images/help-circle.png",
                height: 16.h,
                width: 16.w,
              ),
            ),
          ),
        )
      ],
    );
  }
}
