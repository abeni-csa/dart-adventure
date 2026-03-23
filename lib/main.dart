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
        body: Center(
          child: GestureDetector(
            onDoubleTap: () => print("Double Tabed"),
            onTap: () => print("Tabed"),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blueAccent,
              child: Center(child: Text("My Name")),
            ),
          ),
        ),
      ),
    );
  }
}
