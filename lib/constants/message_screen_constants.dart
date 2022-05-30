import 'package:flutter/material.dart';

class Message {
  static const String messagesLabel = 'Messages';

  static TextStyle messagesTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const deleteContainerDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(13),
      bottomLeft: Radius.circular(13),
    ),
    color: Color(0xFFFF4141),
  );

  static const chatContainerDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0xFFEBEBEB),
        offset: Offset(0, -0.05),
        blurRadius: 0.01,
      ),
    ],
  );

  static TextStyle senderNameTextStyle = const TextStyle(
    fontFamily: 'PoppinsSemiBold',
    fontSize: 16,
    color: Color(0xFF1A1D1E),
    fontWeight: FontWeight.w400,
  );

  static TextStyle unreadMessageTextStyle = const TextStyle(
    fontSize: 12,
    color: Colors.white,
  );
}
