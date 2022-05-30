import 'package:flutter/material.dart';
import 'package:jobs_app/constants/home_constants.dart';
import 'package:jobs_app/page_transitions/custom_page_route.dart';

Route<dynamic> routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    case routeToSplashScreen:
      return CustomPageRoute(child: const SplashScreen());
    case routeToLoginScreen:
      return CustomPageRoute(child: const LoginScreen());
    case routeToRegisterScreen:
      return CustomPageRoute(child: const RegisterScreen());
    case routeToHomeScreen:
      return CustomPageRoute(child: const HomeScreen());
    case routeToMessageScreen:
      return CustomPageRoute(child: const MessageScreen());
    case routeToProfileScreen:
      return CustomPageRoute(child: const ProfileScreen());
    case routeToSettingsScreen:
      return CustomPageRoute(child: const SettingsScreen());
    case routeToMenuScreen:
      return CustomPageRoute(child: const MenuScreen());
    default:
      return CustomPageRoute(child: const SplashScreen());
  }
}
