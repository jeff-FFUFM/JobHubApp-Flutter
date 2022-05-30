import 'package:flutter/material.dart';

class Splash {
  static const String title = "Find a Perfect \n Job Match";
  static const String subtitle = 'Finding your dream job is much easier \nand faster with JobHub';
  static const String buttonText = "Let's Get Started";
  static const String backgroundImage = 'images/splash4.png';
  static const String arrowImage = 'images/arrow_right.png';

  static const jobMatchTextStyle = TextStyle(
      fontSize: 33,
      height: 1.3,
      letterSpacing: 0.8,
      color: Color(0xFF1A1D1E),
      fontWeight: FontWeight.w700,
      fontFamily: 'PoppinsSemiBold');

  static const subtitleTextStyle = TextStyle(
      fontSize: 15,
      height: 1.6,
      letterSpacing: 0.4,
      color: Color(0xFF6A6A6A),
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');

  static BoxDecoration textButtonDecoration = BoxDecoration(
    color: const Color(0xFF4CA6A8),
    borderRadius: BorderRadius.circular(11),
  );

  static const buttonTextStyle = TextStyle(
      fontSize: 16,
      height: 1.6,
      letterSpacing: 0.4,
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');
}
