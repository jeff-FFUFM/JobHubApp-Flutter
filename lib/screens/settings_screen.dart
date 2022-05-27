import 'package:flutter/material.dart';
import 'package:jobs_app/widgets/bottom_nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Press to move to homepage from settings',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Container(),
                Spacer(),
                Padding(padding: EdgeInsets.only(bottom: 25), child: BottomNavBar()),
              ],
            )),
      ),
    );
  }
}
