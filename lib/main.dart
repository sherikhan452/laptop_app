import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/Login_Screen.dart';
import 'package:laptop_app/Theme/ThemeProvidor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginscreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
