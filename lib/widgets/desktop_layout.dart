import 'package:admin_dashboard/widgets/all_expensess.dart';
import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32,
      children: [
      Expanded(
        
        child: CustomDrawer()),
      Expanded(
        flex: 2,
        child: AllExpensess())
    ],);
  }
}