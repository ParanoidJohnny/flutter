import 'package:flutter/material.dart';
import 'package:myapp/screens/details_screen.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/library_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gameshop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const LibraryScreen());
  }
}
