import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github_gallery/di/app_module.dart';
import 'package:github_gallery/view/sereens/home_screen.dart';
import 'package:github_gallery/view_model/user_view_mode.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    setup();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Github gallery',
        theme: ThemeData(
          appBarTheme: AppBarTheme(),
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    );
  }
}
