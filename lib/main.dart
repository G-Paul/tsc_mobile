import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import './screens/home/home_screen.dart';
import './screens//main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var theme_1 = ThemeData(
    primaryColor: const Color.fromARGB(255, 147, 240, 65),
    backgroundColor: const Color(0xFFFDFDF5),
    iconTheme: const IconThemeData(
      color: const Color.fromARGB(255, 46, 49, 42),
    ),
    bottomAppBarColor: const Color(0xFFEDF2E2),
    appBarTheme: const AppBarTheme(
      backgroundColor: const Color(0xFFFDFDF5),
      elevation: 0,
      foregroundColor: const Color(0xFF1A1C18),
    ),
    buttonTheme: const ButtonThemeData(
      splashColor: Color.fromARGB(255, 188, 248, 59),
    ),
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TSC_Mobile',
      theme: theme_1,
      home: MainScreen(),
    );
  }
}
