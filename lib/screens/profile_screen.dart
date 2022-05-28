import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/screens/edit_profile_screen.dart';
import 'package:jobs_app/state_files/page_data.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color(0xFFFBFBFB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            //* 1st Line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    //* Default method for page transition
                    Navigator.pop(context);
                    Provider.of<PageData>(context, listen: false).moveMarkerTo('/Home');
                    Navigator.pushNamed(context, '/Home');
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 41,
                    color: Color(0xFF1A1D1E),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.5),
                  child: const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1A1D1E),
                    ),
                  ),
                ),
                const SizedBox(
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
                const Positioned(
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
                    backgroundColor: const Color(0xFF4CA6A8),
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
            const Text(
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
            const SizedBox(
              height: 10,
            ),
            //*4th Line
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  height: 49.65,
                  width: 335,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: const Color(0xFFE2E2E2),
                    ),
                  ),
                  child: const Text(
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
            const SizedBox(
              height: 28,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Email',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  height: 49.65,
                  width: 335,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: const Color(0xFFE2E2E2),
                    ),
                  ),
                  child: const Text(
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
            const SizedBox(
              height: 28,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  height: 49.65,
                  width: 335,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    left: 14,
                    top: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: const Color(0xFFE2E2E2),
                    ),
                  ),
                  child: const Text(
                    '************',
                    style: TextStyle(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1D1E),
                    ),
                  ),
                ),
                //* 7th Line
                const SizedBox(
                  height: 45,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const EditProfileScreen()));
                  },
                  child: Container(
                    height: 49.65,
                    width: 335,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                      right: 12,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CA6A8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFF459799),
                        width: 0.9,
                      ),
                    ),
                    child: const Text(
                      'Edit Profile',
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
    );
  }
}
