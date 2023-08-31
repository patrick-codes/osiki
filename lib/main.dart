import 'package:flutter/material.dart';
import 'package:osiki/home.dart';
import 'package:osiki/intro%20pages/login_screen.dart';
import 'package:osiki/intro%20pages/register_screen.dart';

//import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 4, 52, 91),
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}