import 'package:fist_flutter/pages/1stpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage(), debugShowCheckedModeBanner: false);
  }
}
