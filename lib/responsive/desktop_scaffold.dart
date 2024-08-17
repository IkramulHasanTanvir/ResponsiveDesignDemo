import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/util/my_box.dart';
import 'package:responsive_design/util/my_tile.dart';

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

          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemBuilder: (context, index){
                          return const MyBox();
                        }),
                  ),
                ),
            
                Expanded(
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index){
                        return const MyTile();
                      }),
                )
              ],
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(decoration: BoxDecoration(
                  color: myDefaultBackground,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.grey),
                ),),
              ),),
        ],
      ),
    );
  }
}
