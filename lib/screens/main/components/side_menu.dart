import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: SvgPicture.asset('', package: 'fist_flutter')),

            DrawerListTile(
              title: "Dashbord",
              svgSrc: 'assets/icons/menu_dashboard.svg',
              press: () {},
            ),
            DrawerListTile(
              svgSrc: 'assets/icons/menu_tran.svg',
              title: "Transactions",
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
              title: "Settings",
              svgSrc: 'assets/icons/menu_setting.svg',
              press: () {},
              children: [
                DrawerListTile(
                  title: "Profile",
                  svgSrc: 'assets/icons/menu_profile.svg',
                  press: () {},
                ),
                DrawerListTile(
                  title: "Security",
                  svgSrc: '/assets/icons/lock.svg',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
    this.children = const [], // New optional parameter
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final List<Widget> children; // List for dropdown items

  @override
  Widget build(BuildContext context) {
    // If children are provided, return an ExpansionTile (Dropdown)
    if (children.isNotEmpty) {
      return ExpansionTile(
        leading: SvgPicture.asset(
          svgSrc,
          height: 16,
          colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        ),
        title: Text(title, style: const TextStyle(color: Colors.white54)),
        iconColor: Colors.white54,
        tilePadding: EdgeInsets.only(left: 1.0),
        collapsedIconColor: Colors.white54,
        childrenPadding: const EdgeInsets.only(left: 20), // Indent sub-items
        children: children,
      );
    }

    // Default simple ListTile
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
      ),
      title: Text(title, style: const TextStyle(color: Colors.white54)),
    );
  }
}
