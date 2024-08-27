import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/widgets/my_box.dart';
import 'package:responsive_design/widgets/my_grid_builder.dart';
import 'package:responsive_design/widgets/my_list_builder.dart';
import 'package:responsive_design/widgets/my_tile.dart';

class TableScaffold extends StatefulWidget {
  const TableScaffold({super.key});

  @override
  State<TableScaffold> createState() => _TableScaffoldState();
}

class _TableScaffoldState extends State<TableScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: const Column(
        children: [
          MyGridBuilder(
            aspectRatio: 4,
            crossAxisCount: 4,
            itemCount: 20,
            child: MyBox(),
          ),
          Expanded(
            child: MyListBuilder(itemCount: 20, child: MyTile(),),
          ),
        ],
      ),
    );
  }
}
