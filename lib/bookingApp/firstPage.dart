import 'package:flutter/material.dart';
import 'package:homepage/bookingApp/bookingPage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 113, 28, 224),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                "https://play-lh.googleusercontent.com/rDkghxc6_44hZOUc2Gx2oXhRgnvgDDP4_u0G2xM3_bF761PZMSB174eIgWM2n8ZAn8g",
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Bookingpage()));
                },
                child: Text(
                  "Select your seat  >",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
