import 'package:flutter/material.dart';
import 'package:jobs_app/constants/splash_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFE5E5E5),
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Splash.backgroundImage),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 240),
              child: const Text(
                Splash.title,
                style: Splash.jobMatchTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 380),
              child: const Text(
                Splash.subtitle,
                style: Splash.subtitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Center(
            //Using inkwell, lumilipat basta basta kahit di napipindot yung button!
            child: GestureDetector(
              onTap: () async {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Login');
                await Future.delayed(const Duration(milliseconds: 500));
              },
              child: Container(
                height: 50,
                width: 241.67,
                decoration: Splash.textButtonDecoration,
                margin: const EdgeInsets.only(top: 530),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        Splash.buttonText,
                        style: Splash.buttonTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        Splash.arrowImage,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
