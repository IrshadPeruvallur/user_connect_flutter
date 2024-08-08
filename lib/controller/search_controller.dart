import 'package:flutter/material.dart';
import 'package:user_connect/model/user_model.dart';
import 'package:user_connect/service/user_service.dart';

class FilterController extends ChangeNotifier {
  UserService userService = UserService();
  List<UserModel> filteredUsers = [];
  bool isSearch = false;
  bool isSearchValueEmpty = false;

  // Toggles the visibility of the search text field
  void clickedSearchButton() {
    isSearch = !isSearch;
    notifyListeners();
  }

  // Filters the user list based on the username
  Future<void> filterUser(String username) async {
    List<UserModel> userList = await userService.fetchUserData();
    filteredUsers = userList
        .where((element) =>
            element.name!.toLowerCase().contains(username.toLowerCase()))
        .toList();

    // Updates the state to reflect whether the search resulted in any matches
    isSearchValueEmpty = username.isNotEmpty && filteredUsers.isEmpty;
    notifyListeners();
  }
}
