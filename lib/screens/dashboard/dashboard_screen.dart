import 'package:fist_flutter/components/search_box.dart';
import 'package:fist_flutter/const/colors.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dashbord",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Spacer(),
                Expanded(child: SearchField()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
