import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/Login_Screen.dart';
import 'package:laptop_app/Theme/ThemeProvidor.dart';
import 'package:laptop_app/auth/LoginAndRegister.dart';
import 'package:laptop_app/models/restuarent.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Restuarent(),
        ),
      ],
      child: const Myapp(),
    ),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(
        onTap: () {},
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
