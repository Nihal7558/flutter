import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              ClipOval(
                child: Container(
                  width: 70,
                  height: 80,
                  child: Image.network(
                      "https://th.bing.com/th/id/OIP.L0TgA9vfmeA8f89sTdvDyAHaHa?w=196&h=196&c=7&r=0&o=5&pid=1.7",
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Welcome Back',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal)),
              Text(
                'Enter Your Credential Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "user name",
                      fillColor: Colors.deepPurpleAccent,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: "password",
                      fillColor: Colors.deepPurpleAccent,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  'forgetpassword',
                  style: TextStyle(
                      color: Colors.red, decoration: TextDecoration.underline),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
