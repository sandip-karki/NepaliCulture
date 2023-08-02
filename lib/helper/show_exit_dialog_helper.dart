import 'package:flutter/material.dart';

Future<bool> showExitDialog(BuildContext context) async {
  return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
              title: Text('Exit'),
              content: Text('Do you really want to exit?'),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                  ],
                ),
              ]));
}
