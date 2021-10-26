import 'dart:async';

import 'package:flutter/material.dart';
import 'package:github_gallery/model/apis/api_response.dart';
import 'package:github_gallery/model/user.dart';
import 'package:github_gallery/model/user_repository.dart';

class UserViewModel with ChangeNotifier {
  final _userList = StreamController<List<User>>();

  Stream<List<User>> get users {
    return _userList.stream;
  }

  Future<void> fetchUserList() async {
    List<User> fetchedUsers = await UserRepository().fetchUserList();
    _userList.add(fetchedUsers);
  }
}
