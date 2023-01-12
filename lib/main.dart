import 'package:flutter/material.dart';
import 'package:todo/auth/auth_screen.dart';
import 'package:todo/screens/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AuthScreen(),
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.dark, primaryColor: Colors.red));
  }
}
