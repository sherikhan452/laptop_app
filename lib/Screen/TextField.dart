import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final bool obsecTxt;

  const Textfield({
    super.key,
    required this.textController,
    required this.hintText,
    required this.obsecTxt,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      obscureText: obsecTxt,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).colorScheme.onPrimary),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
    );
  }
}
