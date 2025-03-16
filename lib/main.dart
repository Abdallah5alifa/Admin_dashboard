import 'package:admin_dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdminDashboard());
}
class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}