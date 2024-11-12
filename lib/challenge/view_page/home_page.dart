import 'dart:io';
import 'package:flutter/material.dart';
import 'package:homepage/theme/theme.dart';
import 'package:homepage/theme/theme_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Tabbarnavigation extends StatefulWidget {
  const Tabbarnavigation({super.key});

  @override
  State<Tabbarnavigation> createState() => _TabbarnavigationState();
}

class _TabbarnavigationState extends State<Tabbarnavigation>
    with SingleTickerProviderStateMixin {
  late TabController _tabbarcontroller;

  @override
  void initState() {
    super.initState();
    _tabbarcontroller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabbarcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final textColor = themeProvider.themeDataStyle == ThemeDataStyle.dark
        ? Colors.white
        : Colors.black;

    return Scaffold(
      backgroundColor: themeProvider.themeDataStyle.primaryColor,
      appBar: AppBar(
        title: Text("TabBar Page",
            style: TextStyle(
                color: Colors.red)), // Change title text color based on theme
        bottom: TabBar(
          controller: _tabbarcontroller,
          tabs: const [
            Tab(text: "Home"),
            Tab(text: "Profile"),
            Tab(text: "Settings"),
          ],
        ),
        actions: [
          Switch(
            value: themeProvider.themeDataStyle == ThemeDataStyle.dark,
            onChanged: (isOn) {
              themeProvider.changeTheme();
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabbarcontroller,
        children: <Widget>[
          RadioAndToggle(
              textColor: textColor), // Pass the textColor to child widgets
          ProfileWidget(
              textColor: textColor), // Pass the textColor to child widgets
          UrlSettings(
              textColor: textColor), // Pass the textColor to child widgets
        ],
      ),
    );
  }
}

// radio button
class RadioAndToggle extends StatefulWidget {
  final Color textColor;

  const RadioAndToggle({super.key, required this.textColor});

  @override
  State<RadioAndToggle> createState() => _RadioAndToggleState();
}

class _RadioAndToggleState extends State<RadioAndToggle> {
  String radiogroup = " ";

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          fillColor: WidgetStatePropertyAll(widget.textColor),
          value: "Male",
          groupValue: radiogroup,
          onChanged: (value) {
            setState(() {
              radiogroup = value!;
            });
          },
        ),
        Text("Male",
            style: TextStyle(color: widget.textColor)), // Apply text color
        SizedBox(width: 10),
        Radio(
          fillColor: WidgetStatePropertyAll(widget.textColor),
          value: "Female",
          groupValue: radiogroup,
          onChanged: (value) {
            setState(() {
              radiogroup = value!;
            });
          },
        ),
        Text("Female",
            style: TextStyle(color: widget.textColor)), // Apply text color
      ],
    );
  }
}

// --- Profile Widget ---
class ProfileWidget extends StatefulWidget {
  final Color textColor;

  const ProfileWidget({super.key, required this.textColor});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  File? _image;

  Future<void> selectImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.lightBlue),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: _image == null
                            ? NetworkImage(
                                "https://th.bing.com/th/id/OIP.EwG6x9w6RngqsKrPJYxULAHaHa?w=180&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7")
                            : FileImage(_image!),
                      ),
                      Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Choose a Profile Image",
                                      style:
                                          TextStyle(color: widget.textColor)),
                                  content: Text(
                                      "Pick an image from camera or gallery",
                                      style:
                                          TextStyle(color: widget.textColor)),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        selectImage(ImageSource.camera);
                                      },
                                      child: Text("Take a Photo",
                                          style: TextStyle(
                                              color: widget.textColor)),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        selectImage(ImageSource.gallery);
                                      },
                                      child: Text("Pick from Gallery",
                                          style: TextStyle(
                                              color: widget.textColor)),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          _image = null;
                                        });
                                      },
                                      child: Text("Delete Photo",
                                          style: TextStyle(color: Colors.red)),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.add_a_photo),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// --- URL Settings Widget ---
class UrlSettings extends StatelessWidget {
  final Color textColor;

  const UrlSettings({super.key, required this.textColor});

  Future _launchUrl(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      return "could launch URL";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your favorite videos",
              style: TextStyle(color: textColor)), // Apply text color
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green)),
            onPressed: () {
              _launchUrl("https://www.example.com");
            },
            child: Text("Press here for a link",
                style: TextStyle(color: textColor)), // Apply text color
          ),
        ],
      ),
    );
  }
}
