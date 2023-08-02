import 'package:flutter/material.dart';
import 'package:nepali_culture/Screens/splashscreen.dart';
import 'package:nepali_culture/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(const NepaliCulture());
}

class NepaliCulture extends StatefulWidget {
  const NepaliCulture({super.key});

  @override
  State<NepaliCulture> createState() => _NepaliCultureState();
}

class _NepaliCultureState extends State<NepaliCulture> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
        child:
            Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
          return MaterialApp(
              theme: themeProvider.getTheme(),
              debugShowCheckedModeBanner: false,
              home: SplashScreean());
        }));
  }
}
