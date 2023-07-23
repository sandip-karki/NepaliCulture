import 'package:flutter/material.dart';
import 'package:nepali_culture/materials/appbar.dart';

import 'package:nepali_culture/materials/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNav(),
      body: WillPopScope(
        onWillPop: () => showExitDialog(context),
        child: SafeArea(
            child: Column(
          children: [
            Text('this is english page'),
          ],
        )),
      ),
      drawer: NavBar(),
    );
  }
}

Future<bool> showExitDialog(BuildContext context) async {
  return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
              title: Text('Exit'),
              content: Text('Do you really want to exit?'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes'),
                ),
              ]));
}
