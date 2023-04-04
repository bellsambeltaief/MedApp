import 'package:doc_app/views/account/account.dart';
import 'package:doc_app/views/home/home.dart';
import 'package:doc_app/views/sign/sign.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Sign(),
    );
  }
}
