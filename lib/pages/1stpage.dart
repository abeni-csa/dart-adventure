import 'package:fist_flutter/pages/2ndpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fist Page")),
      drawer: Drawer(
        backgroundColor: Colors.amber[600],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.abc_sharp, size: 200)),
            ListTile(
              textColor: Colors.blue,
              leading: Icon(Icons.face),
              title: Text("Fist Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (cxt) => FirstPage()),
                );
              },
            ),
            ListTile(
              textColor: Colors.blue,
              leading: Icon(Icons.face),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (cxt) => SecondPage()),
                );
              },
              title: Text("Second Page"),
            ),
            ListTile(
              textColor: Colors.blue,
              leading: Icon(Icons.face),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (cxt) => FirstPage()),
                );
              },
              title: Text("Blog"),
            ),
          ],
        ),
      ),
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
