import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/controllers/auth_controller.dart';
import 'package:news_app/widgets/custom_service_button.dart';
import 'package:news_app/widgets/custom_spanned_text.dart';
import 'package:news_app/widgets/custom_submit_buttom.dart';
import 'package:news_app/widgets/custom_text_field.dart';

import 'login_page.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameTxtCtl = TextEditingController();
    TextEditingController mobileTxtCtl = TextEditingController();
    TextEditingController passwordTxtCtl = TextEditingController();
    TextEditingController otpTxtCtl = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(
                  top: 134.h),
              child: Image.asset("assets/images/image 1.png"),
            ),
            SizedBox(height: 50.h,),
            CustomTextField(nameTxtCtl, hintText: "Enter Your Name", titleText: "Name"),
            SizedBox(height: 10.h,),
            CustomTextField(mobileTxtCtl, hintText: "Enter Mobile Number", titleText: "Mobile"),
            SizedBox(height: 10.h,),
            CustomTextField(passwordTxtCtl, hintText: "Enter New Password", titleText: "Password"),
            SizedBox(height: 20.h,),
            CustomSubmitButton(onTap:()async{
              String otpText;
              ConfirmationResult confirmationResult = await AuthController.signInWithPhoneWeb(mobileTxtCtl.text);
              otpText = await showDialog(context: context, builder: (BuildContext context){
                return Dialog(backgroundColor: Colors.transparent,
                  child: Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r),),
                    ),
                    child: Column(
                      children: [
                        CustomTextField(hintText: "Enter Code",titleText: "OTP",otpTxtCtl),
                        CustomSubmitButton(onTap: (){
                          return Navigator.of(context).pop(otpTxtCtl.text);
                        }, buttonText: "Submit")
                      ],
                    ),
                  ),
                );
              });
              await AuthController.confirmPhoneWeb(confirmationResult, otpText);

            },buttonText: "Create Account"),
            SizedBox(height: 23.h,),
            Center(child: Text("OR"),),
            SizedBox(height: 23.h,),
            CustomServiceButton(buttonText: "Sign In with Google",serviceIcon: Image.asset("assets/icons/google.png"),),
            SizedBox(height: 8.h,),
            CustomServiceButton(buttonText: "Sign In with Facebook",serviceIcon: Image.asset("assets/icons/Facebook.png"),linearGradient: LinearGradient(
              begin: Alignment(1.00, 0.00),
              end: Alignment(-1, 0),
              colors: [Color(0xFF18A9FD), Color(0xFF046BE3)],
            ),),
            SizedBox(height: 127.h,),
            CustomSpannedText(onTap:(){ Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()));},firstText: "Already have an account ?", secondText: "Sign in")



          ],),
        ),
      ),
    );
  }
}
