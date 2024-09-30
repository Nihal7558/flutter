import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Enter your credential to login"),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 48,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    fillColor: const Color.fromARGB(255, 228, 187, 248),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 48,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "email",
                    fillColor: const Color.fromARGB(255, 225, 187, 248),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 48,
              width: 300,
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "password",
                    fillColor: const Color.fromARGB(255, 225, 187, 248),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 48,
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "Confirm password",
                    fillColor: const Color.fromARGB(255, 225, 187, 248),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 170, 126, 68),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    //style: ,
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [Text("Or")],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepPurpleAccent,
                      side: BorderSide(color: Colors.deepPurpleAccent)),
                  onPressed: () {},
                  child: Text(
                    "Sign in with Google",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " Login",
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
