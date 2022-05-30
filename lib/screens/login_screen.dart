import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/constants/login_screen_constants.dart';
import 'package:jobs_app/models/user.dart';
import 'package:jobs_app/state_files/users_data.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Login.welcomeLabel,
                  style: Login.welcomeLabelTextStyle,
                ),
                Text(
                  Login.fillDetailsLabel,
                  style: Login.fillDetailsLabelTextStyle,
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
                      SvgPicture.asset(Login.messageImageSvg),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: TextField(
                          controller: _email,
                          enableSuggestions: false,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          onTap: textFieldUnfocus,
                          decoration: Login.emailInputDecoration,
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
                      SvgPicture.asset(Login.lockImageSvg),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.52,
                        child: TextField(
                          controller: _password,
                          onTap: textFieldUnfocus,
                          decoration: Login.passwordInputDecoration,
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
                          Login.eyeCloseImageSvg,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      Login.forgotPassLabel,
                      style: Login.forgotPassTextStyle,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final user = User(email: _email.text, password: _password.text, name: '');
                    _password.clear();
                    if (Provider.of<UsersData>(context, listen: false).verifyUser(user)) {
                      Provider.of<UsersData>(context, listen: false).updateName(user);
                      //print('Login Successful');
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Login Status'),
                              content: const Text(
                                'Login Successful! Proceeding to Home Page',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'),
                                )
                              ],
                            );
                          });
                      Future.delayed(const Duration(seconds: 2), () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/Home');
                      });
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Login Status'),
                              content: const Text(
                                'Email/Password did not match. Please try again.',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'),
                                )
                              ],
                            );
                          });
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CA6A8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      Login.loginLabel,
                      textAlign: TextAlign.center,
                      style: Login.loginTextStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 38.19),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    Login.continueLabel,
                    style: Login.continueTextStyle,
                  ),
                ),
                const SizedBox(height: 28.65),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: Login.googleBoxDecoration,
                      child: Image.asset(Login.googleImage),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: Login.facebookBoxDecoration,
                      child: Image.asset(Login.facebookImage),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(
                    text: Login.newUserLabel,
                    style: Login.newUserTextStyle,
                    children: [
                      TextSpan(
                        text: Login.createAccountLabel,
                        style: Login.createAcctTextStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/Register');
                            await Future.delayed(const Duration(milliseconds: 100));
                          },
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
