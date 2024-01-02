import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_3/pages/homepage.pages.dart';
import 'package:task_3/pages/login.pages.dart';
import 'package:task_3/pages/main_splash.dart';
import 'package:task_3/pages/splash_screen.pages.dart';
import 'package:task_3/services/preferences.services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    var preference = await SharedPreferences.getInstance();

    GetIt.I.registerSingleton<SharedPreferences>(preference);

    // if (PrefrencesService.prefs != null) {
  //   print("prefrences init successfully");
  // }
}catch (e) {
    print("Error in init Prefrences ${e}");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(),
          primarySwatch: Colors.cyan),
      home: MainSplash(),
    );
  }
}
