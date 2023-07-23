import 'package:flutter/material.dart';
import 'package:nepali_culture/materials/appbar.dart';
import 'package:nepali_culture/materials/drawer.dart';

class NepaliHomeScreen extends StatelessWidget {
  const NepaliHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNav(),
      body: Text('यो नेपाली होम स्क्रिन हो।'),
      drawer: NavBar(),
    );
  }
}
