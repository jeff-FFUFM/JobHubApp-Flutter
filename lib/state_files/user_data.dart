class User {
  String email;
  String password;

  User({
    required this.email,
    required this.password,
  });
}

class UserList {
  List<User> users = [
    User(email: 'jeffrey12@yahoo.com', password: 'jeffrey12'),
    User(email: 'john@yahoo.com', password: 'johnjohn'),
  ];

  bool userIn(User user) {
    return users.any((element) => element.email == user.email);
  }

  bool verifyUser(User user) {
    if (userIn(user)) {
      final index = users.indexWhere((element) => element.email == user.email);

      if (users[index].password == user.password) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
