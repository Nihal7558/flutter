import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerEx extends StatefulWidget {
  const ImagepickerEx({super.key});

  @override
  State<ImagepickerEx> createState() => _ImagepickerExState();
}

class _ImagepickerExState extends State<ImagepickerEx> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final getImage = await ImagePicker().pickImage(source: source);
    setState(() {
      if (getImage != null) {
        _image = File(getImage.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBar(
                title: Text(
                  "Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.teal,
              ),
              SizedBox(
                height: 48,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: _image == null || kIsWeb
                    ? AssetImage("assets/IMG_6276.JPG")
                    : FileImage(_image!),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Muhammad Nihal"),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lime[500]),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title: Text(
                              'Select source of the image',
                            ),
                            content: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lime),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      _pickImage(ImageSource.camera);
                                    },
                                    child: Text('Camera')),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lime),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      _pickImage(ImageSource.gallery);
                                    },
                                    child: Text('Gallery')),
                              ],
                            ),
                          );
                        });
                  },
                  child: Text("click to change image")),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 185,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple[200]),
                    onPressed: () {
                      setState(() {
                        _image = null;
                      });
                    },
                    child: Text('clear image')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
