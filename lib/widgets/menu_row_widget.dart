import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuRowWidget extends StatelessWidget {
  final String title;
  final String imageAddress;

  const MenuRowWidget({
    Key? key,
    required this.title,
    required this.imageAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              imageAddress,
              fit: BoxFit.contain,
              width: 48,
            ),
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: Color(0xFF1A1D1E),
              shadows: [
                Shadow(color: Color(0xFF131D25), offset: Offset(0.12, 0.12), blurRadius: 0.1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
