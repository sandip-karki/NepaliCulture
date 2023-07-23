import 'dart:async';

import 'package:flutter/material.dart';

import 'package:nepali_culture/Screens/language_select.dart';

class SplashScreean extends StatelessWidget {
  const SplashScreean({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Language()));
    });
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
