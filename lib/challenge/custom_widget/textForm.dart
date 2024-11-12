import 'package:flutter/material.dart';

class Customformfield extends StatelessWidget {
  final String hinttext;
  TextEditingController controller;
  final TextStyle? hintstyle;
  final Widget prefixicon;
  final Widget? suffixion;
  Function()? suffix;
  bool obsucre;
  String obsucurechar;
  final String? Function(String?)? validator;

  Customformfield(
      {super.key,
      required this.controller,
      required this.hinttext,
      this.hintstyle,
      required this.prefixicon,
      this.suffixion,
      this.suffix,
      required this.obsucre,
      required this.obsucurechar,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 80,
      child: TextFormField(
        controller: controller,
        obscureText: obsucre,
        obscuringCharacter: obsucurechar,
        validator: validator,
        decoration: InputDecoration(
            fillColor: Colors.deepOrange,
            filled: true,
            hintText: hinttext,
            hintStyle: hintstyle,
            prefixIcon: prefixicon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(66),
            )),
      ),
    );
  }
}
