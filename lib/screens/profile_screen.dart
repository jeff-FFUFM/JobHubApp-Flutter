import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/constants/all_screen_constants.dart';
import 'package:jobs_app/constants/menu_screen_constants.dart';
import 'package:jobs_app/constants/profile_screen_constants.dart';
import 'package:jobs_app/state_files/page_data.dart';
import 'package:jobs_app/state_files/users_data.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userManager = Provider.of<UsersData>(context);
    return ChangeNotifierProvider(
      create: (context) => UsersData(),
      child: Scaffold(
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
                      Provider.of<PageData>(context, listen: false).moveMarkerTo(routeToHomeScreen);
                      Navigator.pushNamed(context, routeToHomeScreen);
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 41,
                      color: Color(0xFF1A1D1E),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9.5),
                    child: Text(
                      Profile.profileLabel,
                      style: Profile.profileLabelTextStyle,
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
                    Profile.myImage,
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
                        Profile.penImageSvg,
                        width: 9.5,
                      ),
                    ),
                  ),
                ],
              ),
              //* 3rd Line
              Text(
                userManager.name,
                style: Menu.nameTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              //*4th Line
              FieldWidget(
                nameLabel: 'Name',
                name: userManager.name,
              ),
              //* 5th Line
              const SizedBox(
                height: 28,
              ),

              FieldWidget(nameLabel: 'Email', name: userManager.users[userManager.index].email),
              //* 6th Line
              const SizedBox(
                height: 28,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FieldWidget(
                    nameLabel: 'Password',
                    name: '************',
                  ),
                  //* 7th Line
                  const SizedBox(
                    height: 45,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfileScreen(),
                        ),
                      );
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
                      child: Text(
                        'Edit Profile',
                        style: Profile.editProfileTextStyle,
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

class FieldWidget extends StatelessWidget {
  const FieldWidget({
    Key? key,
    required this.nameLabel,
    required this.name,
  }) : super(key: key);

  final String name;
  final String nameLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameLabel,
          style: Profile.subtitleTextStyle,
        ),
        const SizedBox(
          height: 9,
        ),
        Container(
          height: 49.65,
          width: 335,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 14),
          decoration: Profile.textFieldBoxDecoration,
          child: Text(
            name,
            style: Profile.textFieldTextStyle,
          ),
        ),
      ],
    );
  }
}
