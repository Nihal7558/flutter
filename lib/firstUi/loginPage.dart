import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(165, 214, 167, 1),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    'Assets/pngtree-green-halo-glow-light-effect-blur-background-image_556769 1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Center(
                    child: ClipOval(
                      child: Container(
                        width: 50,
                        height: 70,
                        child: Image.network(
                          "https://th.bing.com/th/id/OIP.SppZGdGWn2PjP711zbKcEQAAAA?rs=1&pid=ImgDetMain",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'welcome to greenhub',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(80),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "enter your email Id",
                            fillColor: Color.fromARGB(255, 224, 228, 218),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(33))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'password',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            hintText: "enter your password",
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
                          child: Text('Login')),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Create New Account?'),
                            SizedBox(
                              width: 1,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
