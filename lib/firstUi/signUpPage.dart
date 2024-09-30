import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                ClipOval(
                  child: Container(
                    width: 50,
                    height: 70,
                    child: Image.network(
                      "https://th.bing.com/th/id/OIP.SppZGdGWn2PjP711zbKcEQAAAA?rs=1&pid=ImgDetMain",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Enter your Name",
                              fillColor: Color.fromARGB(255, 224, 228, 218),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(33))),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Mobile number',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.call),
                              hintText: "Enter you Mobile number",
                              fillColor: Color.fromARGB(255, 224, 228, 218),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(33))),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              hintText: "Enter you Email Id",
                              fillColor: Color.fromARGB(255, 224, 228, 218),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(33))),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              hintText: "Enter you Email Id",
                              fillColor: Color.fromARGB(255, 224, 228, 218),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(33))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 40,
                        width: 300,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff92D722)),
                            onPressed: () {},
                            child: Text('Sign Up')),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Back to Login')],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
