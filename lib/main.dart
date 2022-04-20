import 'package:flutter/material.dart';
import 'package:startup_namer/login.dart';
import 'package:startup_namer/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ); //
  }
}
