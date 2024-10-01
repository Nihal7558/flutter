import 'package:flutter/material.dart';
import 'package:homepage/30-9-24/page1.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    height: 75,
                    width: 70,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSunpBK8zdl1Vr7TYoFxyG5CkNAk6TUCOugWQ&s"),
                  ),
                ),
                SizedBox(
                    height: 30,
                    child: Text(
                      'Leafboard',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        'Work with out limit',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 85,
                          ),
                          Text('Enter the email'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 50,
                        width: 350,
                        child: TextFormField(
                          validator: (value) {
                            if (emailcontroller.text.isEmpty) {
                              return 'enter a valid email';
                            }
                          },
                          controller: emailcontroller,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              ),
                              hintText: "sghj@gmail.com",
                              fillColor: Colors.blue[100],
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(19))),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 85,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Choose a Password",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        width: 350,
                        child: TextFormField(
                          // validator: (value) {
                          //   if (passwordcontroller.text.isEmpty) {
                          //     return 'enter a valid password';
                          //   }
                          // },
                          controller: passwordcontroller,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.black,
                              ),
                              hintText: "min 8 characters",
                              fillColor: Colors.blue[100],
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(19))),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        width: 350,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300],
                              foregroundColor: Colors.black54,
                            ),
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => Page1()));
                              } else if (emailcontroller.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('something wrong')));
                              }
                            },
                            child: Text("Continue")),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text('or'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: 350,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('sign in with Google')),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: 350,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('sign in with Apple')),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
