import 'package:flutter/material.dart';
import 'package:homepage/24-9-24/home.dart';
import 'package:homepage/24-9-24/login.dart';
import 'package:homepage/30-9-24/page1.dart';
import 'package:homepage/30-9-24/page2.dart';
import 'package:homepage/bookingApp/bookingPage.dart';
import 'package:homepage/bookingApp/firstPage.dart';
import 'package:homepage/buttons/sample.dart';
import 'package:homepage/firstUi/myCart.dart';
import 'package:homepage/profile%20page%20layout/imagePicker.dart';
import 'package:homepage/profile%20page/profile.dart';
import 'package:homepage/shared%20preference/example.dart';
import 'package:homepage/tab%20and%20bottom%20bar/bottom_bar_page.dart';
import 'package:homepage/tab%20and%20bottom%20bar/homepage.dart';
import 'package:homepage/whatsapp/bottombar.dart';
import 'package:homepage/whatsapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: bottombarexample(),
    );
  }
}
