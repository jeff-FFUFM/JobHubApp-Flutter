import 'package:flutter/material.dart';

class NotificationSettings extends ChangeNotifier {
  bool newPostSwitch = true;
  bool gotHiredSwitch = true;
  bool gotRejectedSwitch = false;
  bool messageSwitch = false;
  bool callSwitch = true;
  bool darkModeSwitch = false;

  void toggleNewPost(bool value) {
    newPostSwitch = !newPostSwitch;
    notifyListeners();
  }

  void toggleGotHired(bool value) {
    gotHiredSwitch = !gotHiredSwitch;
    notifyListeners();
  }

  void toggleGotRejected(bool value) {
    gotRejectedSwitch = !gotRejectedSwitch;
    notifyListeners();
  }

  void toggleMessage(bool value) {
    messageSwitch = !messageSwitch;
    notifyListeners();
  }

  void toggleCall(bool value) {
    callSwitch = !callSwitch;
    notifyListeners();
  }

  void toggleDarkMode(bool value) {
    darkModeSwitch = !darkModeSwitch;
    notifyListeners();
  }
}
