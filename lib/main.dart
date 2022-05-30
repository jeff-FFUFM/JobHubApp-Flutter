import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobs_app/api/google_sheet_api.dart';
import 'package:jobs_app/models/message.dart';
import 'package:jobs_app/route_manager/route_generator.dart';
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
  //* Initial plan is to use google sheets for database storage of messages, user account details, etc.
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
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
