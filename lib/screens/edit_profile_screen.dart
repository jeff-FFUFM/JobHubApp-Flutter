import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/widgets/bottom_nav_bar.dart';

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
        // resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color(0xFFFBFBFB),
          child: Container(
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
                          color: Color(0xFF1A1D1E),
                        ),
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
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
                          decoration: const InputDecoration(
                            hintText: 'Jeffrey Palcone',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
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
                          style: const TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1D1E),
                          ),
                          decoration: const InputDecoration(
                            hintText: 'jeffreypalcone@yahoo.com',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6A6A6A),
                            ),
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
                        'Confirm Password',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1A1D1E),
                          fontWeight: FontWeight.bold,
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
                          style: const TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1D1E),
                          ),
                          decoration: const InputDecoration(
                            hintText: '************',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6A6A6A),
                            ),
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
        ),
      ),
    );
  }
}
