import 'package:admin_dashboard/views/mobile_layout.dart';
import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 24,
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: MobileLayout(),
          )),
          SizedBox()
      ],
    );
  }
}
