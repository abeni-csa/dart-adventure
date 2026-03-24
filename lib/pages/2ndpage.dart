import 'package:fist_flutter/pages/1stpage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (cxt) => FirstPage()),
            ),
          },
          child: Text("Go to the Privios page"),
        ),
      ),
    );
  }
}
