import 'package:flutter/cupertino.dart';
import 'package:jobs_app/models/user.dart';

class UsersData extends ChangeNotifier {
  String name = 'hey';
  int index = 0;
  List<User> users = [
    User(name: 'Jeffrey Palcone', email: 'jeffrey@yahoo.com', password: 'jeffrey'),
    User(name: 'John Santos', email: 'john@yahoo.com', password: 'johnjohn'),
    User(name: 'a', email: 'a', password: 'a'),
  ];

  bool userIn(User user) {
    return users.any((element) => element.email == user.email);
  }

  //* Login Verification
  bool verifyUser(User user) {
    if (userIn(user)) {
      index = users.indexWhere((element) => element.email == user.email);
      notifyListeners();

      if (users[index].password == user.password) {
        updateName(user);
        notifyListeners();
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  void updateName(User user) {
    name = users[index].name;
  }

  void registerNewUser(User user) {
    users.add(User(name: user.name, email: user.email, password: user.password));
    notifyListeners();
  }
}
