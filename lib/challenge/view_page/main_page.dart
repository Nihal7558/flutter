import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homepage/challenge/custom_widget/container.dart';
import 'package:homepage/challenge/custom_widget/custom_botton.dart';
import 'package:homepage/challenge/custom_widget/textForm.dart';
import 'package:homepage/challenge/view_page/home_page.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final formkey = GlobalKey<FormState>();
  final nihal = "muhammednihal";
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final nihalemail = "mnihalep345";
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customformfield(
                  controller: email,
                  hinttext: " enter the email",
                  prefixicon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      icon: obscure
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.close)),
                  obsucre: obscure,
                  obsucurechar: "*",
                  validator: (valye) {
                    if (email.text.isEmpty) {
                      return "enter your email";
                    } else if (email.text != nihalemail) {
                      return "enter your correct email";
                    }
                    return null;
                  }),
              Customformfield(
                  controller: password,
                  hinttext: " password",
                  prefixicon: IconButton(
                      onPressed: () {},
                      icon: obscure
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.close)),
                  obsucre: obscure,
                  obsucurechar: "*",
                  validator: (valye) {
                    if (password.text.isEmpty) {
                      return "enter your password";
                    } else if (password.text != nihal) {
                      return "enter your correct password";
                    }
                    return null;
                  }),
              CustomBotton(
                  text: "login",
                  onpressed: () {
                    setState(() {
                      if (password.text == nihal) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Tabbarnavigation()));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("error")));
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
