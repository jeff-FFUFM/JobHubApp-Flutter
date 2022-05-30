import 'package:flutter/material.dart';
import 'package:jobs_app/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFE5E5E5),
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/splash4.png'),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 240),
              child: const Text(
                'Find a Perfect \nJob Match',
                style: splashJobMatchTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 380),
              child: const Text(
                'Finding your dream job is much easier\n'
                'and faster with JobHub',
                style: splashFindingTextStyle,
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
                //GoogleSheetApi.countAccountRows(); testing
              },
              child: Container(
                height: 50,
                width: 241.67,
                decoration:
                    BoxDecoration(color: const Color(0xFF4CA6A8), borderRadius: BorderRadius.circular(11)),
                margin: const EdgeInsets.only(top: 530),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Let's Get Started",
                        style: splashButtonTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Image.asset('images/arrow_right.png'),
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

// Todo2: Check if can change for dark mode later on: can't too late

//* ERROR, upon rambo click sa first page, kahit di tamaan yung button, lumilipat!!  Solved using Gesture Detector
