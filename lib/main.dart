import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/23-10-24%20task/homepage.dart';
import 'package:homepage/24-9-24/home.dart';
import 'package:homepage/24-9-24/login.dart';
import 'package:homepage/30-9-24/page1.dart';
import 'package:homepage/30-9-24/page2.dart';
import 'package:homepage/MVVM/view/home.dart';
import 'package:homepage/User%20management%20app/provider_services.dart';
import 'package:homepage/User%20management%20app/provider_view.dart';
import 'package:homepage/bookingApp/bookingPage.dart';
import 'package:homepage/bookingApp/firstPage.dart';
import 'package:homepage/buttons/sample.dart';
import 'package:homepage/challenge/view_page/main_page.dart';
import 'package:homepage/firstUi/myCart.dart';
import 'package:homepage/getx/AddProfile.dart';
import 'package:homepage/getx/getfrom.dart';
import 'package:homepage/profile%20page%20layout/imagePicker.dart';
import 'package:homepage/profile%20page/profile.dart';
import 'package:homepage/shared%20preference/example.dart';
import 'package:homepage/tab%20and%20bottom%20bar/bottom_bar_page.dart';
import 'package:homepage/tab%20and%20bottom%20bar/homepage.dart';
import 'package:homepage/theme/theme_provider.dart';
import 'package:homepage/whatsapp/bottombar.dart';
import 'package:homepage/whatsapp/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: Provider.of<ThemeProvider>(context).themeDataStyle,
        darkTheme: ThemeData.dark(),
        home: LoginPage2());
  }
}
