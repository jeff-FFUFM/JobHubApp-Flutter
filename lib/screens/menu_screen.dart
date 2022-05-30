import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/screens/applications_screen.dart';
import 'package:jobs_app/screens/edit_profile_screen.dart';
import 'package:jobs_app/screens/settings_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Container(
              padding: const EdgeInsets.only(right: 250),
              child: Image.asset(
                'images/jeff.png',
                scale: 5,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
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
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                'jeffreypalcone@yahoo.com',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6A6A6A),
                  shadows: [
                    Shadow(color: Colors.grey, offset: Offset(0.2, 0.2), blurRadius: 0.2),
                    Shadow(color: Color(0xFF6A6A6A), offset: Offset(0.2, 0.2), blurRadius: 0.2),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileScreen()));
                },
                child: const MenuRowWidget(title: 'Edit Profile', imageAddress: 'images/menu_user.svg')),
            const SizedBox(height: 28),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const ApplicationsScreen()));
                },
                child: const MenuRowWidget(title: 'Applications', imageAddress: 'images/menu_history.svg')),
            const SizedBox(height: 28),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                },
                child: const MenuRowWidget(
                    title: 'Notification Settings', imageAddress: 'images/menu_settings.svg')),
            const SizedBox(height: 28),
            const MenuRowWidget(title: 'Share App', imageAddress: 'images/menu_heart.svg'),
            const SizedBox(
              height: 75,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Splash');
                },
                child: const MenuRowWidget(title: 'Log Out', imageAddress: 'images/menu_logout.svg')),
          ],
        ),
      ),
    );
  }
}

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
