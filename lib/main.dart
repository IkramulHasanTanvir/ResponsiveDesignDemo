import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/desktop_scaffold.dart';
import 'package:responsive_design/responsive/mobile_scaffold.dart';
import 'package:responsive_design/responsive/responsive_layout.dart';
import 'package:responsive_design/responsive/tablet_scaffold.dart';

void main() {
  runApp(const Responsive());
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
