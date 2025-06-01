import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:laptop_app/Screen/Login_Screen.dart';
import 'package:laptop_app/Services/auth/AuthGate.dart';
import 'package:laptop_app/Theme/ThemeProvidor.dart';
import 'package:laptop_app/Services/auth/LoginAndRegister.dart';
import 'package:laptop_app/firebase_options.dart';
import 'package:laptop_app/models/restuarent.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      home: Authgate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
