import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/widgets/my_box.dart';
import 'package:responsive_design/widgets/my_gridview_builder.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: const Column(
        children: [
          Expanded(
            child: MyGridviewBuilder(
                itemCount: 10,
                crossAxisCount: 2,
                aspectRatio: 1,
                child: MyBox()),
          ),
        ],
      ),
    );
  }
}
