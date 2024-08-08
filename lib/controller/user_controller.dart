import 'package:flutter/material.dart';
import 'package:user_connect/model/user_model.dart';
import 'package:user_connect/service/user_service.dart';

class UserController extends ChangeNotifier {
  UserService userService = UserService();
  List<UserModel> userList = [];
  bool isLoading = false;

  /* Fetches user data from the [UserService]. If `userList` is empty, it 
   makes a network call to fetch data; otherwise, it returns the existing 
   data in `userList`. */
  Future<List<UserModel>> fetchUserData() async {
    if (userList.isEmpty) {
      userList = await userService.fetchUserData();
    }
    return userList;
  }

  /* Refreshes the user data by clearing the existing `userList`, 
  fetching new data, and updating the state to reflect the changes.
  The method also handles setting the loading state to true while 
  fetching data. */
  Future<void> onRefresh() async {
    isLoading = true;
    await Future.delayed(const Duration(seconds: 1));
    userList = [];
    await fetchUserData();
    isLoading = false;
    notifyListeners();
  }
}
