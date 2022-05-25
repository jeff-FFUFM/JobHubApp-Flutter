import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                      SizedBox(
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
                      SizedBox(
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
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
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
                  child: Text('-- Or Continue With --'), //! Edit this
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
                    style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins'),
                    children: [
                      TextSpan(
                        text: 'Create Account',
                        style: TextStyle(fontWeight: FontWeight.w800),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, '/Register');
                            await Future.delayed(const Duration(milliseconds: 500));
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
