import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_3/pages/homepage.pages.dart';
import 'package:task_3/pages/login.pages.dart';


class MainSplash extends StatefulWidget {
  const MainSplash({super.key});

  @override
  State<MainSplash> createState() => _MainSplashState();
}

class _MainSplashState extends State<MainSplash> {

  @override
  void initState() {
    initSplash();
    super.initState();
  }


  void initSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    if (GetIt.I.get<SharedPreferences>().getBool('isLogin') ?? false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePageScreen()));
      // go to home page
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
      // go to login page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0d0e0e),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/background.png"),
                  fit: BoxFit.cover)
          ),
        child: Center(
          child: Container(child: Image.asset("images/logo3.png")),
        ),
      ),
    );
  }
}
