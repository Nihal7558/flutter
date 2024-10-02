import 'package:flutter/material.dart';
import 'package:homepage/30-9-24/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 500,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(120),
                            bottomRight: Radius.circular(120))),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 260),
                      child: ClipOval(
                        child: Container(
                          height: 75,
                          width: 70,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSunpBK8zdl1Vr7TYoFxyG5CkNAk6TUCOugWQ&s",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Text(
                      'Leafboard',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                      child: Column(
                        children: [
                          Text(
                            'A platform build for a new way of working',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 150),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 132, 110, 158),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const Page2()));
                          },
                          child: Text("Get Start for Free")),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
