import 'package:flutter/material.dart';

class EditProfile {
  static const Color backgroundColor = Color(0xFFFBFBFB);
  static const Color backButtonColor = Color(0xFF1A1D1E);
  static const String topTitle = 'Profile';
  static const String displayImage = 'images/jeff.png';
  static const String penImageSvg = 'images/pen.svg';
  static const String buttonText = 'Save Profile';

  static TextStyle topTitleTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle myNameTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Color(0xFF1A1D1E),
    shadows: [
      Shadow(color: Colors.black, offset: Offset(0.2, 0.2), blurRadius: 0.2),
      Shadow(color: Color(0xFF131D25), offset: Offset(0.2, 0.2), blurRadius: 0.2),
    ],
  );

  static TextStyle nameTextStyle = const TextStyle(
    fontSize: 16,
    color: Color(0xFF6A6A6A),
  );

  static BoxDecoration textFieldContainerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(9),
    border: Border.all(
      color: const Color(0xFFE2E2E2),
    ),
  );

  static TextStyle buttonTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xFFFFFFFF),
  );

  static TextStyle emailLabelTextStyle = const TextStyle(
    fontSize: 14.5,
    fontWeight: FontWeight.w600,
    color: Color(0xFF1A1D1E),
  );

  static TextStyle emailFieldTextStyle = const TextStyle(
    fontSize: 14.5,
    fontWeight: FontWeight.w600,
    color: Color(0xFF6A6A6A),
  );

  static BoxDecoration buttonBoxDecoration = BoxDecoration(
    color: const Color(0xFF4CA6A8),
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      color: const Color(0xFF459799),
      width: 0.9,
    ),
  );
}
