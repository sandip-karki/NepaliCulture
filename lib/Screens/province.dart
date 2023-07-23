import 'package:flutter/material.dart';
import 'package:nepali_culture/materials/appbar.dart';
import 'package:nepali_culture/materials/drawer.dart';

class ProvinceScreen extends StatelessWidget {
  const ProvinceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNav(),
      body: SafeArea(
          child: Column(
        children: [
          Text('this is Province page'),
        ],
      )),
      drawer: NavBar(),
    );
  }
}
