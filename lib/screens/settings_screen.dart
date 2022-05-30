import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs_app/state_files/notification_settings.dart';
import 'package:jobs_app/state_files/page_data.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final settingsManager = Provider.of<NotificationSettings>(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            //* 1st Line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    //* Default method for page transition
                    Navigator.pop(context);
                    Provider.of<PageData>(context, listen: false).moveMarkerTo('/Home');
                    Navigator.pushNamed(context, '/Home');
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 41,
                    color: Color(0xFF1A1D1E),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 9.5),
                  child: Text(
                    'Notification Settings',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1A1D1E),
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0.1, 0.1), blurRadius: 0.2),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            //* 2nd Line

            NotificationSettingsRow(
              title: 'New Post',
              description: 'If any new post update',
              isOn: settingsManager.newPostSwitch,
              onPressed: settingsManager.toggleNewPost,
            ),
            NotificationSettingsRow(
              title: 'Got Hired',
              description: 'If you get hired by the company',
              isOn: settingsManager.gotHiredSwitch,
              onPressed: settingsManager.toggleGotHired,
            ),
            NotificationSettingsRow(
              title: 'Got Rejected',
              description: 'If you get rejected by the company',
              isOn: settingsManager.gotRejectedSwitch,
              onPressed: settingsManager.toggleGotRejected,
            ),
            NotificationSettingsRow(
              title: 'Message',
              description: 'Got any message',
              isOn: settingsManager.messageSwitch,
              onPressed: settingsManager.toggleMessage,
            ),
            NotificationSettingsRow(
              title: 'Call',
              description: 'Have a call',
              isOn: settingsManager.callSwitch,
              onPressed: settingsManager.toggleCall,
            ),
            NotificationSettingsRow(
              title: 'Dark Mode',
              description: 'Enable dark theme',
              isOn: settingsManager.darkModeSwitch,
              onPressed: settingsManager.toggleDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationSettingsRow extends StatelessWidget {
  final String title;
  final String description;
  final bool isOn;
  final void Function(bool)? onPressed;
  const NotificationSettingsRow({
    Key? key,
    required this.isOn,
    required this.title,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 38),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1A1D1E),
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(color: Colors.black, offset: Offset(0.1, 0.1), blurRadius: 0.2),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xFF6A6A6A),
                  fontWeight: FontWeight.w400,
                  shadows: [
                    Shadow(color: Colors.grey, offset: Offset(0.1, 0.1), blurRadius: 0.2),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 15, top: 35),
          child: Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              activeColor: const Color(0xFF4CA6A8),
              thumbColor: const Color(0xFFE9E9E9),
              value: isOn,
              onChanged: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
