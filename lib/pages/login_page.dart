import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:news_app/pages/signup_page.dart";
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
              margin: EdgeInsets.only(top: 134.h),
              child: Image.asset("assets/images/image 1.png"),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomTextField(mobileNoCtl,
                hintText: "Enter Mobile Number", titleText: "Mobile"),
            SizedBox(height: 10.h),
            CustomTextField(passwordCtl,
                hintText: "Enter Password", titleText: "Password"),
            SizedBox(
              height: 29.h,
            ),
            CustomSubmitButton(onTap:()async{
              FirebaseAuth auth = FirebaseAuth.instance;

// Wait for the user to complete the reCAPTCHA & for an SMS code to be sent.
              ConfirmationResult confirmationResult = await auth.signInWithPhoneNumber("+8801768976882");
              // UserCredential userCredential = await confirmationResult.confirm("");
            },buttonText: "Login"),
            SizedBox(height: 20.h),
            CustomSpannedText(
                onTap: () {},
                firstText: "Forgot Password ?",
                secondText: "Retrieve Password"),
            SizedBox(height: 140.h),
            CustomSpannedText(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                firstText: "Don\'t have an account ?",
                secondText: "Create new account")
          ],
        ),
      ),
    );
  }
}
