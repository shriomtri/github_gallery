import 'dart:io';

import 'package:github_gallery/model/apis/app_exception.dart';
import 'package:github_gallery/model/services/base_service.dart';
import 'package:http/http.dart' as http;

class UserService extends BaseService {
  static const String PATH_USER_LIST = '/users';

  Future getUserList() => getResult(() async {
        return await http.get(Uri.parse(BASE_URL + UserService.PATH_USER_LIST));
      });
}
