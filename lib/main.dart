import 'package:admin_dashboard/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context) {
        return const AdminDashboard();
      },
    ),
  );
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
