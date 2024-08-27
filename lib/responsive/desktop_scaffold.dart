import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/widgets/my_box.dart';
import 'package:responsive_design/widgets/my_grid_builder.dart';
import 'package:responsive_design/widgets/my_list_builder.dart';
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
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          const Expanded(
            flex: 2,
            child: Column(
              children: [
                MyGridBuilder(
                  aspectRatio: 4,
                  crossAxisCount: 4,
                  itemCount: 20,
                  child: MyBox(),
                ),
                Expanded(
                  child: MyListBuilder(
                    itemCount: 20,
                    child: MyTile(),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: myDefaultBackground,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
