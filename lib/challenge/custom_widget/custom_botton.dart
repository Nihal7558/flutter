import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  String? text;
  Function() onpressed;
  CustomBotton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpressed, child: Text(text.toString()));
  }
}
