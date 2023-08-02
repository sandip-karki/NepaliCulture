import 'dart:async';
import 'package:nepali_culture/Screens/homescreen.dart';
import 'package:nepali_culture/Screens/nepali_home_Screen.dart';
import 'package:nepali_culture/main.dart';

import 'package:flutter/material.dart';

import 'package:nepali_culture/Screens/language_select.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreean extends StatefulWidget {
  const SplashScreean({super.key});

  @override
  State<SplashScreean> createState() => SplashScreeanState();
}

class SplashScreeanState extends State<SplashScreean> {
  static const String loginKey = "Login";
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    var Sharedpref = await SharedPreferences.getInstance();
    var isLoggined = Sharedpref.getBool(loginKey);
    var isEnglish = Sharedpref.getBool("Englishclick");
    var isNepali = Sharedpref.getBool("NepaliClick");
    print(isNepali);
    Timer(Duration(seconds: 2), () {
      if (isLoggined != null) {
        if (isLoggined) {
          if (isEnglish == true && isNepali == null) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          } else {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => NepaliHomeScreen()));
          }
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Language()));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Language()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 119, 190, 1),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Image.asset("assets/images/nepalmap.jpg"),
                )),
            SizedBox(
              width: 40,
            ),
            Text(
              'Nepali Culture',
              style: TextStyle(
                color: Color.fromRGBO(245, 128, 32, 1),
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )));
  }
}
