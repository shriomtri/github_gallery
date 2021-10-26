import 'package:github_gallery/model/services/base_service.dart';
import 'package:github_gallery/model/services/user_service.dart';
import 'package:github_gallery/model/user.dart';

class UserRepository {
  UserService _userService = UserService();

  Future<List<User>> fetchUserList() async {
    dynamic response = await _userService.getUserList();
    response as List;
    List<User> userList = response.map((e) => User.fromJson(e)).toList();
    return userList;
  }
}
