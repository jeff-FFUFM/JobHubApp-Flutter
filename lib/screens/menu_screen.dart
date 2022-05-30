import 'package:flutter/material.dart';
import 'package:jobs_app/constants/all_screen_constants.dart';
import 'package:jobs_app/state_files/users_data.dart';
import 'package:provider/provider.dart';
import 'package:jobs_app/widgets/menu_row_widget.dart';
import 'package:jobs_app/constants/menu_screen_constants.dart';

class MenuScreen extends StatelessWidget {
  final myImageAddress = 'images/jeff.png';
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userManager = Provider.of<UsersData>(context);
    final index = userManager.index;
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              padding: const EdgeInsets.only(right: 250),
              child: Image.asset(
                myImageAddress,
                scale: 5,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                userManager.name,
                style: Menu.nameTextStyle,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                userManager.users[index].email,
                style: Menu.emailTextStyle,
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfileScreen(),
                ),
              ),
              child: const MenuRowWidget(
                title: Menu.editProfileLabel,
                imageAddress: Menu.menuImage,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ApplicationsScreen(),
                ),
              ),
              child: const MenuRowWidget(
                title: Menu.applicationLabel,
                imageAddress: Menu.historyImage,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              ),
              child: const MenuRowWidget(
                title: Menu.settingsLabel,
                imageAddress: Menu.settingsImageSvg,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const MenuRowWidget(
              title: Menu.shareAppLabel,
              imageAddress: Menu.heartImageSvg,
            ),
            const SizedBox(
              height: 75,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, routeToSplashScreen),
              child: const MenuRowWidget(
                title: Menu.logoutLabel,
                imageAddress: Menu.logoutImageSvg,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
