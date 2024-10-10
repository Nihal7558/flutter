import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  Function() ontap1;
  Function() ontap2;
  Function() ontap3;

  DrawerWidget({
    super.key,
    required this.ontap1,
    required this.ontap2,
    required this.ontap3,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Text('Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: const Text('Tab Section'),
            onTap: ontap1,
          ),
          ListTile(
            title: const Text('settings'),
            onTap: ontap2,
          ),
          ListTile(
            title: const Text('About'),
            onTap: ontap3,
          ),
        ],
      ),
    );
  }
}
