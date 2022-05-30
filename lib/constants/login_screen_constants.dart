import 'package:flutter/material.dart';

class Login {
  static const String welcomeLabel = 'Welcome Back!';
  static const String fillDetailsLabel = 'Fill your details or continue with social media';
  static const String messageImageSvg = 'images/message.svg';
  static const String lockImageSvg = 'images/padlock.svg';
  static const String eyeCloseImageSvg = 'images/eyeclose.svg';
  static const String forgotPassLabel = 'Forgot Password';
  static const String loginLabel = 'LOG IN';
  static const String continueLabel = '- Or Continue With -';
  static const String googleImage = 'images/google_logo.png';
  static const String facebookImage = 'images/facebook_logo.png';
  static const String newUserLabel = 'New User? ';
  static const String createAccountLabel = 'Create Account';

  static TextStyle welcomeLabelTextStyle = const TextStyle(
    fontFamily: 'PoppinsBold',
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static InputDecoration emailInputDecoration = const InputDecoration(
    hintText: 'Email Address',
    hintStyle: TextStyle(fontSize: 16),
    border: InputBorder.none,
  );

  static InputDecoration passwordInputDecoration = const InputDecoration(
    hintText: 'Password',
    hintStyle: TextStyle(fontSize: 16),
    border: InputBorder.none,
  );

  static TextStyle fillDetailsLabelTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6A6A6A),
  );

  static TextStyle forgotPassTextStyle = const TextStyle(
    color: Color(0xFF6A6A6A),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle loginTextStyle = const TextStyle(
    fontSize: 15.5,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle continueTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6A6A6A),
  );

  static BoxDecoration facebookBoxDecoration = BoxDecoration(
    color: const Color(0xFF4460A0),
    borderRadius: BorderRadius.circular(12),
  );

  static BoxDecoration googleBoxDecoration = BoxDecoration(
    color: const Color(0xFFE9F4FF),
    borderRadius: BorderRadius.circular(12),
  );

  static TextStyle newUserTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6A6A6A),
    shadows: [
      Shadow(color: Colors.black, offset: Offset(0.12, 0.12), blurRadius: 0.12),
    ],
  );

  static TextStyle createAcctTextStyle = const TextStyle(color: Colors.black); // this is rich text child

}
