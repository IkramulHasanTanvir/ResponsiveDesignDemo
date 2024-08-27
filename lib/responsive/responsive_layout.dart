import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/desktop_scaffold.dart';
import 'package:responsive_design/responsive/mobile_scaffold.dart';
import 'package:responsive_design/responsive/table_scaffold.dart';
import 'package:responsive_design/utils/screen_utils.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tableScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tableScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDisplayType(size.width);

    if (deviceType == DeviceType.mobile) {
      return mobileScaffold;
    } else if (deviceType == DeviceType.tablet) {
      return tableScaffold;
    }
    return desktopScaffold;
  }
}
