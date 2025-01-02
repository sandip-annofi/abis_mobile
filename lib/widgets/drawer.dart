import 'package:flutter/material.dart';
import 'package:abis_mobile/utils/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    return Drawer(
      backgroundColor: MyColor.drawerBackground,
      width: 200,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        children: [
          ListTile(
            leading: const Icon(Icons.home, color: MyColor.textColor),
            tileColor: currentRoute == '/home'
                ? MyColor.activeTileColor
                : Colors.transparent,
            title: const Text(
              'Home',
              style: TextStyle(
                color: MyColor.textColor,
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart, color: MyColor.textColor),
            tileColor: currentRoute == '/salesorder'
                ? MyColor.activeTileColor
                : Colors.transparent,
            title: const Text(
              'Sales Order',
              style: TextStyle(
                color: MyColor.textColor,
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/salesorder');
            },
          ),
        ],
      ),
    );
  }
}
