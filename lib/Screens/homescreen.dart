import 'package:flutter/material.dart';
import 'package:nepali_culture/helper/show_exit_dialog_helper.dart';
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
