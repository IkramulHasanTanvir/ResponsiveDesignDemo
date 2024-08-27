import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/widgets/my_box.dart';
import 'package:responsive_design/widgets/my_gridview_builder.dart';
import 'package:responsive_design/widgets/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      //appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          const Expanded(
            flex: 2,
            child: MyGridviewBuilder(
                itemCount: 50,
                crossAxisCount: 4,
                aspectRatio: 1,
                child: MyBox()),
          ),
          const Expanded(
            flex: 1,
            child: MyTile(),
          ),
        ],
      ),
    );
  }
}
