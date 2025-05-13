import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/Mybutton.dart';
import 'package:laptop_app/Screen/TextField.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPass = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock_open_rounded,
              size: 80,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Textfield(
                textController: txtEmail,
                hintText: "Email",
                obsecTxt: false,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Textfield(
                textController: txtPass,
                hintText: "Password",
                obsecTxt: true,
              ),
            ),
            MyButton(onTop: () {}, text: "Sign In"),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text(
                  "Not a Member",
                  style:
                      TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap:(){},
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}