import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class AuthController extends ChangeNotifier{
 static void signInWithPhoneAndroid(String phoneNumber)async {
   await FirebaseAuth.instance.verifyPhoneNumber(
     phoneNumber: phoneNumber,
     verificationCompleted: (PhoneAuthCredential credential) {

     },
     verificationFailed: (FirebaseAuthException e) {

     },
     codeSent: (String verificationId, int? resendToken) {

     },
     codeAutoRetrievalTimeout: (String verificationId) {

     },
   );
 }
 static signInWithPhoneWeb(String phoneNumber)async{
   FirebaseAuth auth = FirebaseAuth.instance;

// Wait for the user to complete the reCAPTCHA & for an SMS code to be sent.
   ConfirmationResult confirmationResult = await auth.signInWithPhoneNumber(phoneNumber);
   return confirmationResult;


 }
 static confirmPhoneWeb(ConfirmationResult confirmationResult, String code)async{
   UserCredential userCredential = await confirmationResult.confirm(code);
 }
}
