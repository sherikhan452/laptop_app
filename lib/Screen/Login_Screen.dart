import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/HomePage.dart';
import 'package:laptop_app/Screen/Mybutton.dart';
import 'package:laptop_app/Screen/TextField.dart';

class Loginscreen extends StatefulWidget {
  final Function()? onTap;
  const Loginscreen({required this.onTap, super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  void login() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }

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
            const SizedBox(
              height: 30,
            ),
            MyButton(onTop: login, text: "Sign In"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not a Member",
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
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
