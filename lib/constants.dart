import 'package:flutter/material.dart';

final myDefaultBackground = Colors.grey.shade300;

final myAppBar = AppBar(
  foregroundColor: Colors.grey.shade300,
  backgroundColor: Colors.grey.shade600,
  title: const Text('Responsive'),
);

final myDrawer = Drawer(
  backgroundColor: Colors.grey.shade400,
  child: const Column(
    children: [
      DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 44,
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D E S H B O A R D'),
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
