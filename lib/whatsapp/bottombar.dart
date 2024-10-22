import 'package:flutter/material.dart';
import 'package:homepage/whatsapp/home.dart';

class bottombarexample extends StatefulWidget {
  const bottombarexample({super.key});

  @override
  State<bottombarexample> createState() => _bottombarexampleState();
}

class _bottombarexampleState extends State<bottombarexample> {
  int index = 0;
  List bottombar = [
    homewhatsapp(),
    Center(
      child: Text("contacts"),
    ),
    Center(
      child: Text("settings"),
    ),
    Center(
      child: Text("contacts"),
    ),
  ];
  void _onitemtapped(int changedindex) {
    setState(() {
      index = changedindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: 'contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'update'),
        ],
        showSelectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        enableFeedback: true,
        currentIndex: index,
        onTap: _onitemtapped,
      ),
      body: bottombar[index],
    );
  }
}
