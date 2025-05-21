import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/Mybutton.dart';
import 'package:laptop_app/Screen/TextField.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({required this.onTap, super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtPass = TextEditingController();
    TextEditingController confPass = TextEditingController();
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
            MyButton(onTop: () {}, text: "Sign In"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a Member",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login",
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
