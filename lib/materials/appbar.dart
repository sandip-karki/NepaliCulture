import 'package:flutter/material.dart';
import 'package:nepali_culture/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class AppBarNav extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56);
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return AppBar(
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
        ),
      ),
      actions: [
        IconButton(
          icon: themeProvider.isDarkTheme
              ? Icon(Icons.nightlight_round)
              : Icon(Icons.wb_sunny),
          onPressed: () {
            themeProvider.toggleTheme();
            final snackBar = SnackBar(
              content: Text(
                themeProvider.isDarkTheme
                    ? 'Dark Theme Enabled'
                    : 'Light Theme Enabled',
                style: TextStyle(fontSize: 20),
              ),
              duration: Duration(milliseconds: 500),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
      ],
    );
  }
}
