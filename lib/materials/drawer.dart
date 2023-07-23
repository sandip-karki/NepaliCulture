import 'package:flutter/material.dart';
import 'package:nepali_culture/Screens/culture.dart';
import 'package:nepali_culture/Screens/glories.dart';
import 'package:nepali_culture/Screens/greater_nepal.dart';
import 'package:nepali_culture/Screens/homescreen.dart';
import 'package:nepali_culture/Screens/martyrs.dart';
import 'package:nepali_culture/Screens/province.dart';
import 'package:nepali_culture/Screens/religions.dart';
import 'package:nepali_culture/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SafeArea(
      child: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          Image.asset('assets/images/GreaterNepal.png', fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    "assets/icons/NepalMapIcon.png",
                    height: 50,
                    width: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'About Nepal',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/GreaterNepalMapIcon.png",
                    height: 50,
                    width: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Greater Nepal',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GreaterNepal()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/NepaliCulture.png",
                    height: 50,
                    width: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Culture',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CultureScreen()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/Glories.png",
                    height: 50,
                    width: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Glories',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GloriesScreen()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/religion.png",
                    height: 50,
                    width: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Religions',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReligionsScreen()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/Martyrsicon.png",
                    height: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                    width: 50,
                  ),
                  title: Text(
                    'Martyrs',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MartyrsScreen()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/Province.png",
                    height: 50,
                    width: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Province',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProvinceScreen()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/share.png",
                    height: 50,
                    width: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Share Us',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/aboutus.png",
                    height: 50,
                    color:
                        themeProvider.isDarkTheme ? Colors.white : Colors.black,
                    width: 50,
                  ),
                  title: Text(
                    'About US',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {},
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'Exit',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
