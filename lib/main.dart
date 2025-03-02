import 'package:flutter/material.dart';
import 'widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartKos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavBar(),
    );
  }
}