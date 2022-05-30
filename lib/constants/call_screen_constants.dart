import 'package:flutter/material.dart';

class Call {
  static const String blackBackgroundImage = 'images/black.png';
  static const Color backIconColor = Color(0xFF1A1D1E);
  static const String screenTextTitle = 'My Screen';
  static const String timeText = '01:12';
  static const Color rotateCameraButtonColor = Color(0xFFFF4A6B);
  static const String rotateImageSvg = 'images/rotation.svg';
  static const String cameraOnImageSvg = 'images/camera.svg';
  static const String cameraOffImage = 'images/camera_off.png';
  static const String micOnImageSvg = 'images/mic.svg';
  static const String micOffImageSvg = 'images/mic_mute1.png';
  static const Color endCallColor = Color(0xFFFF4141);

  static TextStyle titleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.7,
    shadows: [
      Shadow(color: Colors.white38.withOpacity(0.7), offset: const Offset(0, 1), blurRadius: 20),
      Shadow(color: Colors.black.withOpacity(0.7), offset: const Offset(0, 1.5), blurRadius: 20),
    ],
  );

  static TextStyle timeTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.65,
    shadows: [
      Shadow(color: Colors.blue.shade700.withOpacity(0.5), offset: const Offset(0, -0.5), blurRadius: 3),
      Shadow(color: Colors.white38.withOpacity(0.5), offset: const Offset(0, 1), blurRadius: 3),
      Shadow(color: Colors.black.withOpacity(0.5), offset: const Offset(0, 1.5), blurRadius: 3),
    ],
  );

  static BoxDecoration micBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    border: Border.all(color: Colors.white),
  );
}
