import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/constants/register_screen_constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController _username;
  late final TextEditingController _email;
  late final TextEditingController _password;
  bool obscurePasswordField = true;

  void textFieldUnfocus() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  void initState() {
    _username = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            color: const Color(0xFFFBFBFB),
            child: Column(
              children: [
                Align(
                  alignment: const Alignment(-1.075, 0),
                  child: GestureDetector(
                      onTap: () async {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/Login');
                        await Future.delayed(const Duration(milliseconds: 500));
                      },
                      child: const Icon(Icons.chevron_left, size: 35)),
                ),
                const SizedBox(
                  height: 37.24,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Register.registerLabel,
                      style: Register.registerLabelTextStyle,
                    ),
                    Text(
                      Register.fillDetailsLabel,
                      style: Register.fillDetailsLabelTextStyle,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          SvgPicture.asset('images/person.svg'),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: TextField(
                              controller: _username,
                              autocorrect: false,
                              keyboardType: TextInputType.name,
                              onTap: textFieldUnfocus,
                              decoration: const InputDecoration(
                                hintText: 'Username',
                                hintStyle: TextStyle(fontSize: 16),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          SvgPicture.asset('images/message.svg'),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.52,
                            child: TextField(
                              controller: _email,
                              enableSuggestions: false,
                              autocorrect: false,
                              keyboardType: TextInputType.emailAddress,
                              onTap: textFieldUnfocus,
                              decoration: const InputDecoration(
                                hintText: 'Email Address',
                                hintStyle: TextStyle(fontSize: 16),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          SvgPicture.asset('images/padlock.svg'),
                          const SizedBox(width: 12),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.52,
                            child: TextField(
                              controller: _password,
                              onTap: textFieldUnfocus,
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(fontSize: 16),
                                border: InputBorder.none,
                              ),
                              obscureText: obscurePasswordField ? true : false,
                              enableSuggestions: false,
                              autocorrect: false,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                obscurePasswordField = !obscurePasswordField;
                              });
                            },
                            child: SvgPicture.asset(
                              'images/eyeclose.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Todo
                        },
                        child: Text(
                          'Forgot Password',
                          style: Register.forgotPassTextStyle,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4CA6A8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'SIGN UP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 38.19),
                    Align(
                      alignment: Alignment.center,
                      child: Text('- Or Continue With -', style: Register.continueTextStyle),
                    ),
                    const SizedBox(height: 28.65),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: Register.googleBoxDecoration,
                          child: Image.asset(Register.googleImage),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: Register.facebookBoxDecoration,
                          child: Image.asset('images/facebook_logo.png'),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                          text: const TextSpan(
                        text: 'New User? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                        children: [
                          TextSpan(
                            text: 'Create Account',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      )),
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
