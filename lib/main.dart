import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osiki/providers/user_providers.dart';
import 'package:provider/provider.dart';
import 'package:osiki/features/intro%20pages/register_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 4, 52, 91),
        ),
        useMaterial3: true,
      ),
      home: const RegsiterScreen(),
    );
  }
}
