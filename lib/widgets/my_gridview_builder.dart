import 'package:flutter/material.dart';

class MyGridviewBuilder extends StatelessWidget {
  const MyGridviewBuilder(
      {super.key,
      required this.itemCount,
      required this.crossAxisCount,
      required this.aspectRatio,
      required this.child});

  final int itemCount;
  final int crossAxisCount;
  final double aspectRatio;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, childAspectRatio: aspectRatio),
        itemBuilder: (context, index) {
          return child;
        });
  }
}
