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
        appBar: AppBar(
          title: Text("Temar Lije"),
          backgroundColor: Colors.amber,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(12),
          scrollDirection: Axis.vertical,

          children: [
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.green),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.yellow),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.red),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.green),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.yellow),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.red),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.green),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.yellow),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.red),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.green),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.yellow),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.red),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.green),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.yellow),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.red),
            ),
            Expanded(
              child: Container(height: 150, width: 150, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
