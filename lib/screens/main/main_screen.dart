import 'package:fist_flutter/screens/dashboard/dashboard_screen.dart';

import 'components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // defualt flex = 1 == 1/6 of the screen
            child: SideMenu(),
          ),
          Expanded(
            //  this takes 5/6 of the screen
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
    );
  }
}
