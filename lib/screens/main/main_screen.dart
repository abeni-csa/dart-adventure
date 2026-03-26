import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            // defualt flex = 1 == 1/6 of the screen
            child: Column(
              children: [
                DrawerHeader(
                  child: SvgPicture.asset(
                    '/assets/img/school.svg',
                    package: 'fist_flutter',
                  ),
                ),
                DrawerListTile(
                  title: "Dashbord",
                  svgSrc: '/assets/icons/dashboard.svg',
                  press: () {},
                ),
                DrawerListTile(
                  title: "Dashbord",
                  svgSrc: '/assets/icons/dashboard.svg',
                  press: () {},
                ),
                DrawerListTile(
                  title: "Dashbord",
                  svgSrc: '/assets/icons/dashboard.svg',
                  press: () {},
                ),
                DrawerListTile(
                  title: "Dashbord",
                  svgSrc: '/assets/icons/dashboard.svg',
                  press: () {},
                ),
                DrawerListTile(
                  title: "Dashbord",
                  svgSrc: '/assets/icons/dashboard.svg',
                  press: () {},
                ),
                DrawerListTile(
                  title: "Dashbord",
                  svgSrc: '/assets/icons/dashboard.svg',
                  press: () {},
                ),
              ],
            ),
          ),
          Expanded(
            //  this takes 5/6 of the screen
            flex: 5,
            child: Container(color: Colors.amber),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  // const DrawerListTile({super.key});
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      onTap: press,
      leading: SvgPicture.asset(svgSrc, height: 16, color: Colors.white54),
      title: Text(title, style: TextStyle(color: Colors.white54)),
    );
  }
}
