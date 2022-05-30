import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/constants/edit_profile_constants.dart';
import 'package:jobs_app/state_files/users_data.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late final TextEditingController _name;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        body: Container(
          color: EditProfile.backgroundColor,
          child: SingleChildScrollView(
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
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 41,
                        color: EditProfile.backButtonColor,
                      ),
                    ),
                    Text(
                      'Profile',
                      style: EditProfile.topTitleTextStyle,
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
                      EditProfile.displayImage,
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
                          EditProfile.penImageSvg,
                          width: 9.5,
                        ),
                      ),
                    ),
                  ],
                ),
                //* 3rd Line
                Text(
                  Provider.of<UsersData>(context).name,
                  style: EditProfile.myNameTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                //*4th Line
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: EditProfile.nameTextStyle,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Container(
                      height: 49.65,
                      width: 335,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 14),
                      decoration: EditProfile.textFieldContainerDecoration,
                      child: TextField(
                        controller: _name,
                        keyboardType: TextInputType.name,
                        autofocus: false,
                        onTap: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);

                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        style: const TextStyle(
                          fontSize: 14.5,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1A1D1E),
                        ),
                        decoration: InputDecoration(
                          hintText: Provider.of<UsersData>(context).name,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF6A6A6A),
                          ),
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
                    Text(
                      'Your Email',
                      style: EditProfile.nameTextStyle,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Container(
                      height: 49.65,
                      width: 335,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 14),
                      decoration: EditProfile.textFieldContainerDecoration,
                      child: TextField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        autocorrect: false,
                        enableSuggestions: false,
                        onTap: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);

                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        style: EditProfile.emailLabelTextStyle,
                        decoration: InputDecoration(
                          hintText: Provider.of<UsersData>(context)
                              .users[Provider.of<UsersData>(context).index]
                              .email,
                          border: InputBorder.none,
                          hintStyle: EditProfile.emailFieldTextStyle,
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
                    Text(
                      'Confirm Password',
                      style: EditProfile.nameTextStyle,
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
                      decoration: EditProfile.textFieldContainerDecoration,
                      child: TextField(
                        controller: _password,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        autocorrect: false,
                        enableSuggestions: false,
                        obscureText: true,
                        onTap: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);

                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        style: EditProfile.emailLabelTextStyle,
                        decoration: InputDecoration(
                          hintText: '************',
                          border: InputBorder.none,
                          hintStyle: EditProfile.emailFieldTextStyle,
                        ),
                      ),
                    ),
                    //* 7th Line
                    const SizedBox(
                      height: 45,
                    ),
                    GestureDetector(
                      onTap: () {
                        null;
                        //* Change user's name to new name, email as well
                      },
                      child: Container(
                        height: 49.65,
                        width: 335,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                          right: 12,
                        ),
                        decoration: EditProfile.buttonBoxDecoration,
                        child: Text(
                          EditProfile.buttonText,
                          style: EditProfile.buttonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
