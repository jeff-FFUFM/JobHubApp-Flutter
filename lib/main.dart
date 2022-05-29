import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobs_app/api/google_sheet_api.dart';
import 'package:jobs_app/models/message.dart';
import 'package:jobs_app/page_transitions/custom_page_route.dart';
import 'package:jobs_app/screens/home_screen.dart';
import 'package:jobs_app/screens/login_screen.dart';
import 'package:jobs_app/screens/profile_screen.dart';
import 'package:jobs_app/screens/register_screen.dart';
import 'package:jobs_app/screens/settings_screen.dart';
import 'package:jobs_app/screens/splash_screen.dart';
import 'package:jobs_app/screens/message_screen.dart';
import 'package:jobs_app/models/home_screen_tab.dart';
import 'package:jobs_app/state_files/notification_settings.dart';
import 'package:provider/provider.dart';
import 'package:jobs_app/state_files/page_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarContrastEnforced: false,
  ));
  GoogleSheetApi.init();
  runApp(const JobApp());
}

class JobApp extends StatelessWidget {
  const JobApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageData(),
        ),
        ChangeNotifierProvider(
          create: (context) => NotificationSettings(),
        ),
        ChangeNotifierProvider(
          create: (context) => MessageDetails(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'JobApp',
        onGenerateRoute: (route) => routeGenerator(route),
        theme: ThemeData(fontFamily: 'Poppins'),
      ),
    );
  }
}

Route<dynamic> routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    case '/Splash':
      return CustomPageRoute(child: const SplashScreen());
    case '/Login':
      return CustomPageRoute(child: const LoginScreen());
    case '/Register':
      return CustomPageRoute(child: const RegisterScreen());
    case '/Home':
      return CustomPageRoute(child: const HomeScreen());
    case '/Message':
      return CustomPageRoute(child: const MessageScreen());
    case '/Profile':
      return CustomPageRoute(child: const ProfileScreen());
    case '/Settings':
      return CustomPageRoute(child: SettingsScreen());

    default:
      return CustomPageRoute(child: const HomeScreen()); //!!change later to splash Screen
  }
}
