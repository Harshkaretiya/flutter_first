import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
                accountName: Text("Harsh"), accountEmail: Text("Harshk")),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text("hello"),
            leading: Image.asset("assets/images/undraw.png"),
            onTap: null,
          )
        ],
      ),
    );
  }
}
