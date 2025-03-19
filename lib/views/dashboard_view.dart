import 'package:admin_dashboard/views/tablet_layout.dart';
import 'package:admin_dashboard/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context)=>const SizedBox(),
        tabletLayout: (context)=>const TabletLayout(),
        desktopLayout: (context)=>const DesktopLayout(),
      ),
    );
  }
}
