import 'package:get_it/get_it.dart';
import 'package:github_gallery/view_model/user_view_mode.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<UserViewModel>(UserViewModel());
}
