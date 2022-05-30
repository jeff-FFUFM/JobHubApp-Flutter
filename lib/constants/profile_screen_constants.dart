import 'package:flutter/material.dart';

class Profile {
  static const String profileLabel = 'Profile';
  static const String myImage = 'images/jeff.png';
  static const String penImageSvg = 'images/pen.svg';
  static const String editProfileLabel = 'Edit Profile';

  static TextStyle profileLabelTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Color(0xFF1A1D1E),
  );

  static TextStyle nameTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Color(0xFF1A1D1E),
    shadows: [
      Shadow(color: Colors.black, offset: Offset(0.2, 0.2), blurRadius: 0.2),
      Shadow(color: Color(0xFF131D25), offset: Offset(0.2, 0.2), blurRadius: 0.2),
    ],
  );

  static TextStyle subtitleTextStyle = const TextStyle(
    fontSize: 16,
    color: Color(0xFF6A6A6A),
  );

  static TextStyle textFieldTextStyle = const TextStyle(
    fontSize: 14.5,
    fontWeight: FontWeight.w600,
    color: Color(0xFF1A1D1E),
  );

  static BoxDecoration textFieldBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(9),
    border: Border.all(
      color: const Color(0xFFE2E2E2),
    ),
  );

  static TextStyle editProfileTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xFFFFFFFF),
  );
}
