import 'package:flutter/material.dart';
import 'package:mypet/Screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adoption UI',
      theme: ThemeData(
        primaryColor: Color(0XFFFD6456),
      ),
      home: HomeScreen(),
    );
  }
}
