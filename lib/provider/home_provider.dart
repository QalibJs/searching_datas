import 'package:flutter/material.dart';

import '../data/model/users_model.dart';

class HomeProvider with ChangeNotifier {
  List<UsersModel> foundList = [];
  final List<UsersModel> usersModel = UsersModel.usersModel;

  void findUsers() {
    foundList = usersModel;
    notifyListeners();
  }

  void searchingMethod(String value) {
    List<UsersModel> result = [];
    if (value.isEmpty) {
      result = usersModel;
    } else {
      result = usersModel
          .where(
            (users) => users.name.toLowerCase().startsWith(
                  // or contains
                  value.toLowerCase(),
                ),
          )
          .toList();
    }
    foundList = result;
    notifyListeners();
  }
}
