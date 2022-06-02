import 'package:flutter/material.dart';
import 'package:startup_namer/login.dart';
import 'package:startup_namer/navbar.dart';

import 'admin.dart';
import 'admin_approve_reject.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Adminscreen(),
    ); //
  }
}
