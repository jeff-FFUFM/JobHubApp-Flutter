import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/state_files/user_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  bool obscurePasswordField = true;

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
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontFamily: 'PoppinsBold',
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text('Fill your details or continue with social media'), //! Edit this
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
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: TextField(
                          controller: _email,
                          enableSuggestions: false,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          onTap: () {
                            FocusScopeNode currentFocus = FocusScope.of(context);

                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
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
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.52,
                        child: TextField(
                          controller: _password,
                          onTap: () {
                            FocusScopeNode currentFocus = FocusScope.of(context);

                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
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
                    onPressed: () {},
                    child: const Text('Forgot Password'),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final user = User(email: _email.text, password: _password.text);
                    _password.clear();
                    if (UserList().verifyUser(user)) {
                      print('Login Successful');
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
                    child: const Text(
                      'LOG IN',
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
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '- Or Continue With -',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6A6A6A),
                    ),
                  ),
                ),
                const SizedBox(height: 28.65),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9F4FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset('images/google_logo.png'),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4460A0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset('images/facebook_logo.png'),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(
                    text: 'New User? ',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6A6A6A),
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0.12, 0.12), blurRadius: 0.12),
                      ],
                    ),
                    children: [
                      TextSpan(
                        text: 'Create Account',
                        style: const TextStyle(color: Colors.black),
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
