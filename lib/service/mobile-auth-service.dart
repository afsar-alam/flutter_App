import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stall/page/home.dart';


class MobileAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> verifyMobileNumber(String mobileNumber, BuildContext context, Function setData) async {

     verificationCompleted(PhoneAuthCredential credential) async{
          showSnackBar(context, "Verification Completed");
     }

    verificationFailed(FirebaseAuthException e){
      showSnackBar(context, e.toString());
    }

    codeSent(String verificationID, int? forceResendingToken){
      showSnackBar(context, "Verification code sent on the mobile number");
      setData(verificationID);
    }

    codeAutoRetrievalTimeout(String verificationID){
      showSnackBar(context, "Time out");
     }

    try{
      await _auth.verifyPhoneNumber(
          phoneNumber: mobileNumber,
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
    }catch(e){
      showSnackBar(context, e.toString());
    }
  }

  Future<void> signInWithPhoneNumber(
      String verificationId, String smsCode, BuildContext context) async {
    try {
      AuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);

      await _auth.signInWithCredential(credential);

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => Home()),
              (route) => false);
      showSnackBar(context, "logged In");
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void showSnackBar(BuildContext context, String text){
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}