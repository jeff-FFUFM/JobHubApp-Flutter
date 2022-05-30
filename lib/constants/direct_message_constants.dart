import 'package:flutter/material.dart';

class DirectMessage {
  static const Color backgroundColor = Color(0xFFFBFBFB);
  static const String myImageAddress = 'images/people/jeff.gif';
  static const String senderImageAddress = 'images/people/seol.png';
  static const Color callButtonColor = Color(0xFF200E32);
  static const Color senderContainerColor = Color(0xFFFEFEFE);
  static Color myContainerColor = const Color(0xFF4CA6A8).withOpacity(0.1);
  static const String sendButtonImageSvg = 'images/send_button.svg';
  static const Color addButtonColor = Color(0xFF4CA6A8);

  static TextStyle senderTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    color: Color(0xFF1A1D1E),
    fontWeight: FontWeight.w600,
  );

  static TextStyle messagesTextStyle = const TextStyle(
    color: Color(0xFF1A1D1E),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    shadows: [
      Shadow(color: Colors.black, offset: Offset(0.12, 0.12), blurRadius: 0.12),
      Shadow(color: Colors.white38, offset: Offset(-0.1, -0.1), blurRadius: 0.05),
    ],
  );

  static TextStyle dateTextStyle = const TextStyle(
    color: Color(0xFF002251),
    fontSize: 12,
    fontWeight: FontWeight.w300,
    shadows: [
      Shadow(color: Colors.black, offset: Offset(0.1, 0), blurRadius: 0.1),
      Shadow(
        color: Colors.black,
        offset: Offset(0, -0.1),
        blurRadius: 0.1,
      ),
    ],
  );

  static BoxDecoration textFieldBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(11),
  );

  static InputDecoration textFieldDecoration = const InputDecoration(
    hintText: 'Type a message',
    hintStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFF9093A3),
    ),
    border: InputBorder.none,
  );
}
