import 'package:flutter/material.dart';

class MyListBuilder extends StatelessWidget {
  const MyListBuilder({
    super.key,
    required this.itemCount,
    required this.child,
  });

  final int itemCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return child;
        });
  }
}
