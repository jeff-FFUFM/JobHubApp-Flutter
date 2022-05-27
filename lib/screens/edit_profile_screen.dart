import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/widgets/bottom_nav_bar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFFFBFBFB),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              //* 1st Line
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      size: 41,
                      color: Color(0xFF1A1D1E),
                    ),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
              //* 2nd Line
              Stack(
                children: [
                  Image.asset(
                    'images/jeff.png',
                    scale: 5,
                  ),
                  Positioned(
                    top: 75,
                    left: 75,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                    ),
                  ),
                  Positioned(
                    top: 77,
                    left: 77,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF4CA6A8),
                      radius: 13,
                      child: SvgPicture.asset(
                        'images/pen.svg',
                        width: 9.5,
                      ),
                    ),
                  ),
                ],
              ),
              //* 3rd Line
              Text(
                'Jeffrey Palcone',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1A1D1E),
                  shadows: [
                    Shadow(color: Colors.black, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                    Shadow(color: Color(0xFF131D25), offset: Offset(0.2, 0.2), blurRadius: 0.2),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //*4th Line
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6A6A6A),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 49.65,
                    width: 335,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                    child: Text(
                      'Jeffrey Palcone',
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1D1E),
                      ),
                    ),
                  ),
                ],
              ),
              //* 5th Line
              SizedBox(
                height: 28,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6A6A6A),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 49.65,
                    width: 335,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                    child: Text(
                      'jeffreypalcone@yahoo.com',
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1D1E),
                      ),
                    ),
                  ),
                ],
              ),
              //* 6th Line
              SizedBox(
                height: 28,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6A6A6A),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 49.65,
                    width: 335,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: 14,
                      top: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                    child: Text(
                      '************',
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1D1E),
                      ),
                    ),
                  ),
                  //* 7th Line
                  SizedBox(
                    height: 45,
                  ),
                  GestureDetector(
                    onTap: () {
                      null;
                    },
                    child: Container(
                      height: 49.65,
                      width: 335,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                        right: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF4CA6A8),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFF459799),
                          width: 0.9,
                        ),
                      ),
                      child: Text(
                        'Save Profile',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
