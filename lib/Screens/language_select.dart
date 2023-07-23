import 'package:flutter/material.dart';
import 'package:nepali_culture/Screens/homescreen.dart';
import 'package:nepali_culture/Screens/nepali_home_Screen.dart';
import 'package:nepali_culture/materials/drawer.dart';
// import 'package:intl/intl.dart';
// import 'package:intl/locale.dart';

class Language extends StatefulWidget {
  Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  bool isValue = true;
  bool isValue1 = false;
  void checkbox() {
    isValue = !isValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 119, 190, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 119, 190, 1),
        elevation: 0,
        title: Center(
            child: Text(
          'Nepali Culture',
          style: TextStyle(
            color: Color.fromRGBO(245, 128, 32, 1),
            fontSize: 40,
            fontWeight: FontWeight.w400,
          ),
        )),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 193,
              width: 342,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(183, 74, 55, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          'Select your language',
                          style: TextStyle(
                              fontSize: 28,
                              color: Color.fromRGBO(217, 217, 217, 1)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isValue = true;
                          isValue1 = false;
                        });
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.circle_rounded,
                                color: isValue1
                                    ? Colors.transparent
                                    : Color.fromRGBO(245, 128, 32, 1)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            "assets/images/US.jpg",
                            height: 40,
                            width: 40,
                          ),

                          SizedBox(
                            width: 40,
                          ),
                          // Image.asset("images/nepalmap.jpg")
                          Text(
                            'English',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isValue1 = true;
                          isValue = false;
                        });
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.circle_rounded,
                                color: isValue1
                                    ? Color.fromRGBO(245, 128, 32, 1)
                                    : Color.fromRGBO(217, 217, 217, 1)),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Image.asset(
                            "assets/images/NepalFlag.png",
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          // Image.asset("images/nepalmap.jpg")
                          Text(
                            'Nepali',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              print(isValue);
              if (isValue = true) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              } else {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NepaliHomeScreen()));
              }
              print(isValue);
            },
            child: Container(
              height: 63,
              width: 252,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(183, 74, 55, 1)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Continue',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
