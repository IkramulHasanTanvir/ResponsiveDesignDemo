import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/widgets/my_box.dart';
import 'package:responsive_design/widgets/my_grid_builder.dart';
import 'package:responsive_design/widgets/my_list_builder.dart';
import 'package:responsive_design/widgets/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: const Column(
        children: [
          MyGridBuilder(
            aspectRatio: 1,
            crossAxisCount: 2,
            itemCount: 20,
            child: MyBox(),
          ),
          Expanded(
            child: MyListBuilder(
              itemCount: 6,
              child: MyTile(),
            ),
          )
        ],
      ),
    );
  }
}
