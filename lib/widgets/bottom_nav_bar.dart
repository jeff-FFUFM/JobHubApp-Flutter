import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobs_app/page_transitions/custom_page_route.dart';
import 'package:jobs_app/screens/message_screen.dart';
import 'package:jobs_app/state_files/page.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var pageManager = Provider.of<PageData>(context);
    String currentPage = pageManager.page;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 15, bottom: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.white38, offset: Offset(1, 1), blurRadius: 1),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(29),
          topRight: Radius.circular(29),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        NavBarIcon(
          title: currentPage == '/Home' ? '' : 'Home',
          isCurrentPage: currentPage == '/Home',
          image: SvgPicture.asset(
            'images/home.svg',
            color: currentPage == '/Home' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          ),
          fontColor: currentPage == '/Home' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          onTap: () async {
            if (currentPage != '/Home') {
              pageManager.moveTo('/Home');
              Navigator.pop(context);
              Future.delayed(Duration(milliseconds: 100));
              await Navigator.pushNamed(context, '/Home');
              //print('1Page is ${pageManager.page}');
            }
          },
        ),
        NavBarIcon(
          title: currentPage == '/Message' ? '' : 'Message',
          isCurrentPage: currentPage == '/Message',
          image: SvgPicture.asset(
            'images/chat.svg',
            color: currentPage == '/Message' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          ),
          fontColor: currentPage == '/Message' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          onTap: () async {
            if (currentPage != '/Message') {
              pageManager.moveTo('/Message');
              Navigator.pop(context);
              Future.delayed(Duration(milliseconds: 100));
              await Navigator.pushNamed(context, '/Message');
              //print('2Page is ${pageManager.page}');
            }
          },
        ),
        NavBarIcon(
          title: currentPage == '/Profile' ? '' : 'Profile',
          isCurrentPage: currentPage == '/Profile',
          image: SvgPicture.asset(
            'images/profile.svg',
            color: currentPage == '/Profile' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          ),
          fontColor: currentPage == '/Profile' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          onTap: () async {
            if (currentPage != '/Profile') {
              pageManager.moveTo('/Profile');
              Navigator.pop(context);
              Future.delayed(Duration(milliseconds: 100));
              await Navigator.pushNamed(context, '/Profile');
              //print('3Page is ${pageManager.page}');
            }
          },
        ),
        NavBarIcon(
          title: currentPage == '/Settings' ? '' : 'Settings',
          isCurrentPage: currentPage == '/Settings',
          image: SvgPicture.asset(
            'images/settings.svg',
            color: currentPage == '/Settings' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          ),
          fontColor: currentPage == '/Settings' ? Color(0xFF4CA6A8) : Color(0xFFA8A8AA),
          onTap: () async {
            if (currentPage != '/Settings') {
              pageManager.moveTo('/Settings');
              Navigator.pop(context);
              Future.delayed(Duration(milliseconds: 100));
              await Navigator.pushNamed(context, '/Settings');
              //print('4Page is ${pageManager.page}');
            }
          },
        ),
      ]),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  final String title;
  final bool isCurrentPage;
  final SvgPicture image;
  final Color fontColor;
  final void Function()? onTap;

  NavBarIcon({
    required this.title,
    required this.isCurrentPage,
    required this.image,
    required this.fontColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 61,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            image,
            SizedBox(
              child: isCurrentPage
                  ? null
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Text(
                        title,
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 12, color: fontColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
            Container(
              child: isCurrentPage
                  ? SvgPicture.asset(
                      'images/marker.svg',
                      width: 14,
                      height: 14,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
