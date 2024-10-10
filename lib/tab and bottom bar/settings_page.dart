import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:homepage/tab%20and%20bottom%20bar/widgets/common.dart';
import 'package:homepage/tab%20and%20bottom%20bar/widgets/drawerwidget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerWidget(
        ontap1: () => onDrawerItemTapped('Tab Section', context),
        ontap2: () => onDrawerItemTapped('Settings', context),
        ontap3: () => onDrawerItemTapped('About', context),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://thumbs.dreamstime.com/b/unknown-male-avatar-profile-image-businessman-vector-unknown-male-avatar-profile-image-businessman-vector-profile-179373829.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Muahmmad Nihal',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
