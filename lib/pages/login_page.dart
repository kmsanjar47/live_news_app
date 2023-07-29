import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:news_app/widgets/custom_spanned_text.dart";
import "package:news_app/widgets/custom_submit_buttom.dart";
import "package:news_app/widgets/custom_text_field.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TextEditingController mobileNoCtl = TextEditingController();
    TextEditingController passwordCtl = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: 134.h),
              child: Image.asset("assets/images/image 1.png"),
            ),
            CustomTextField(mobileNoCtl, hintText: "Enter Mobile Number", titleText: "Mobile"),
            SizedBox(height: 10.h),
            CustomTextField(passwordCtl, hintText: "Enter Password", titleText: "Password"),
            SizedBox(
              height: 29.h,
            ),
            CustomSubmitButton(buttonText: "Login"),
            SizedBox(height: 20.h),
            CustomSpannedText(firstText: "Forgot Password ?", secondText: "Retrieve Password"),
            SizedBox(height: 140.h),
            CustomSpannedText(firstText: "Don\'t have an account ?", secondText: "Create new account")
          ],
        ),
      ),
    );
  }
}
