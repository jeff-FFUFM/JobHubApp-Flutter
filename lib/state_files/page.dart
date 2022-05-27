import 'package:flutter/material.dart';

class PageData extends ChangeNotifier {
  String page = '/Home';
  static const List<String> pages = ['/Home', '/Message', '/Profile', '/Settings'];

  void moveTo(String newPage) {
    if (pages.contains(newPage) && newPage != page) {
      page = newPage;
      notifyListeners();
    }
  }

  String get getPage {
    return page;
  }
}
