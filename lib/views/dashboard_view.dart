import 'package:admin_dashboard/utils/size_config.dart';
import 'package:admin_dashboard/views/mobile_layout.dart';
import 'package:admin_dashboard/views/tablet_layout.dart';
import 'package:admin_dashboard/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF7F9FA),
      appBar:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? AppBar(
                leading: IconButton(
                  onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                  icon: Icon(Icons.menu),
                ),
              )
              : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
