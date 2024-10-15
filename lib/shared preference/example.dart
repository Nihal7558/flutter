// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class Example extends StatefulWidget {
//   const Example({super.key});

//   @override
//   State<Example> createState() => _ExampleState();
// }

// class _ExampleState extends State<Example> {
//    String? _dropdrwnvalue;
//   String? _showvalue;
//   @override
//     void initState() {
//     super.initState();
    
//   }
//    Future<void> _loadcounter() async {
//     Example pref = await Example.getInstance();
//     setState(() {
//       _showvalue = pref.getString('string');
//     });
//   }
//    Future<void> _savecolor() async {
//     Example prefs = await Example.getInstance();
//     await prefs.setString('string', _dropdrwnvalue!);
//   }
//   Future<void> _showColor() async {
//     if (_dropdrwnvalue != null) {
//       Example prefs = await Example.getInstance();
//       setState(() {
//         _showvalue = prefs.getString('string');
//       });
//     }
//   }
// @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("shared pererance"),
//         centerTitle: true,
//         backgroundColor: Colors.limeAccent,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [DropdownButton<String>(
//                 value: _dropdrwnvalue,
//                 items: [
//                   DropdownMenuItem<String>(value: 'Red', child: Text("Red")),
//                   DropdownMenuItem<String>(
//                       value: 'Green', child: Text("Green")),
//                   DropdownMenuItem<String>(value: 'Blue', child: Text("Blue")),
//                   DropdownMenuItem<String>(
//                       value: 'Yellow', child: Text("Yellow")),
//                 ],
            
//           ],
//         ),

//       ),
//     );
//   }
// }