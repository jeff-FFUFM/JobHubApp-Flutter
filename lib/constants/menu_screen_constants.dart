import 'package:flutter/material.dart';

class Menu {
  static const String editProfileLabel = 'Edit Profile';
  static const String menuImage = 'images/menu_user.svg';
  static const String applicationLabel = 'Applications';
  static const String historyImage = 'images/menu_history.svg';
  static const String settingsLabel = 'Notifications Settings';
  static const String settingsImageSvg = 'images/menu_settings.svg';
  static const String shareAppLabel = 'Share App';
  static const String heartImageSvg = 'images/menu_heart.svg';
  static const String logoutLabel = 'Log Out';
  static const String logoutImageSvg = 'images/menu_logout.svg';

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

  static TextStyle emailTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14.5,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6A6A6A),
    shadows: [
      Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
      Shadow(color: Color(0xFF6A6A6A), offset: Offset(0.2, 0.2), blurRadius: 0.2),
    ],
  );
}
