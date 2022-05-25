import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:jobs_app/api/google_sheet_api.dart';
import 'package:jobs_app/page_transitions/custom_page_route.dart';
import 'package:jobs_app/screens/login_screen.dart';
import 'package:jobs_app/screens/register_screen.dart';
import 'package:jobs_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  GoogleSheetApi.init();
  runApp(const JobApp());
}

class JobApp extends StatelessWidget {
  const JobApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobApp',
      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   '/Login': (context) => const LoginScreen(),
      //   '/Register': (context) => const RegisterScreen(),
      // },
      onGenerateRoute: (route) => routeGenerator(route),
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}

Route<dynamic> routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    case '/Login':
      return CustomPageRoute(child: const LoginScreen());
    case '/Register':
      return CustomPageRoute(child: const RegisterScreen());

    default:
      return CustomPageRoute(child: const SplashScreen());
  }
}
