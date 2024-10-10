import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:homepage/tab%20and%20bottom%20bar/widgets/common.dart';
import 'package:homepage/tab%20and%20bottom%20bar/widgets/drawerwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomeState();
}

class _HomeState extends State<Homepage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Drawer and Tabbar',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        bottom: TabBar(
          // isScrollable: true,
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "tab1",
            ),
            Tab(
              text: "tab2",
            )
          ],
        ),
      ),
      drawer: DrawerWidget(
          ontap1: () => onDrawerItemTapped('Tab Section', context),
          ontap2: () => onDrawerItemTapped('Settings', context),
          ontap3: () => onDrawerItemTapped('About', context)),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
              child: Text('Content for Tab 2', style: TextStyle(fontSize: 18))),
          Center(
              child: Text('Content for Tab 2', style: TextStyle(fontSize: 18))),
          Center(
              child: Text('Content for Tab 3', style: TextStyle(fontSize: 18))),
        ],
      ),
    );
  }
}
