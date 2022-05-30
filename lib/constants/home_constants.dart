import 'package:flutter/material.dart';
export 'package:jobs_app/constants/all_screen_constants.dart';

class Home {
  static const String userImage = 'images/jeff.png';
  static const String menuImageSvg = 'images/menu.svg';
  static const String searchTextField = 'Search here...';
  static const String searchImageSvg = 'images/search.svg';
  static const String title1 = 'Popular Jobs';
  static const String showAllPopularButton = 'Show All';
  static const String title2 = 'Recent Posts';

  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'PoppinsSemiBold',
  );
  static const TextStyle showAllButtonTextStyle = TextStyle(
    fontSize: 12.4,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6A6A6A),
  );

  static BoxDecoration popularJobsDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    boxShadow: const [
      BoxShadow(color: Color(0x09403B4B), offset: Offset(0.1, 0.1), blurRadius: 0.1),
      BoxShadow(color: Color(0x09403B4B), offset: Offset(0.1, -0.1), blurRadius: 0.1),
      BoxShadow(color: Color(0x09403B4B), offset: Offset(0, -0.2), blurRadius: 0.1),
    ],
  );

  static const TextStyle jpostsCompanyNameTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6A6A6A),
  );

  static const TextStyle jpostsTitleTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.42,
    color: Color(0xFF151313),
  );

  static const TextStyle jpostsSalaryTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Color(0xFF151313),
  );

  static const TextStyle jpostsLocationTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Color(0xFF6A6A6A),
  );

  static BoxDecoration recentPostsDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [
      BoxShadow(color: Color.fromARGB(1, 64, 59, 75), offset: Offset(-10, 0), blurRadius: 3),
      BoxShadow(color: Color.fromARGB(1, 64, 59, 75), offset: Offset(0, 10), blurRadius: 3),
      BoxShadow(color: Color.fromARGB(1, 44, 30, 75), offset: Offset(0, -35), blurRadius: 3),
    ],
  );

  static const TextStyle rjpostsTitleTextStyle = TextStyle(
    fontSize: 16,
    fontFamily: 'PoppinsSemiBold',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle rjpostsFullTimeTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Color(0xFF6A6A6A),
  );
}
