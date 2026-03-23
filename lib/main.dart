import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.builder(
          itemCount: 64,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (contex, index) =>
              Container(color: Colors.redAccent, margin: EdgeInsets.all(12)),
        ),
      ),
    );
  }
}
