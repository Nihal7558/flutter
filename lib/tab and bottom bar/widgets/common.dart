import 'package:flutter/material.dart';

void onDrawerItemTapped(String item, BuildContext context) {
  Navigator.pop(context);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      behavior: SnackBarBehavior.floating,
      content: Text(
        'Selected: $item',
        textAlign: TextAlign.center,
      )));
}
