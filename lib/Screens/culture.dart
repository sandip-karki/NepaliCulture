import 'package:flutter/material.dart';
import 'package:nepali_culture/materials/appbar.dart';
import 'package:nepali_culture/materials/drawer.dart';

class CultureScreen extends StatelessWidget {
  const CultureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNav(),
      body: SafeArea(
          child: Column(
        children: [
          Text('this is cultural page'),
        ],
      )),
      drawer: NavBar(),
    );
  }
}
