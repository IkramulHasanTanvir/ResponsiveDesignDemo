import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey.shade300;

var myAppBar = AppBar(
  backgroundColor: Colors.grey.shade800,
  foregroundColor: Colors.grey.shade300,
  title: const Text('ResponsiveDesign'),
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey.shade300,
  child: const Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D E S H  B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
      ),
    ],
  ),
);
