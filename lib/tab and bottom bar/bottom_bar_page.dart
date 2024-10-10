import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:homepage/tab%20and%20bottom%20bar/homepage.dart';
import 'package:homepage/tab%20and%20bottom%20bar/settings_page.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'settings', icon: Icon(Icons.settings)),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
