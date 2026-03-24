import 'package:fist_flutter/pages/2ndpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fist Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            ),
          },
          child: Text("Go to the next page"),
        ),
      ),
    );
  }
}
