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
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.favorite, color: Colors.red, size: 54),
          ),
        ),
      ),
    );
  }
}
