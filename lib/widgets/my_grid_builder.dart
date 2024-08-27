import 'package:flutter/material.dart';

class MyGridBuilder extends StatelessWidget {
  const MyGridBuilder({
    super.key,
    required this.aspectRatio,
    required this.crossAxisCount,
    required this.child,
    required this.itemCount,
  });

  final int itemCount;
  final double aspectRatio;
  final int crossAxisCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          itemCount: itemCount,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount),
            itemBuilder: (context, index) {
              return child;
            }),
      ),
    );
  }
}
