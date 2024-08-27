import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/widgets/my_box.dart';
import 'package:responsive_design/widgets/my_gridview_builder.dart';

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
            Expanded(
              child: MyGridviewBuilder(
                itemCount: 10,
                crossAxisCount: 1,
                aspectRatio: 1,
                child: MyBox(),
              ),
            ),
          ],
        ));
  }
}
