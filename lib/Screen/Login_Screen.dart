import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/Mybutton.dart';
import 'package:laptop_app/Screen/TextField.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

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
                Text(
                  "Not a Member",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "Register",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
