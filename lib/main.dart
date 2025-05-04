import 'package:admin_dashboard/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('ar'),
      startLocale: Locale('ar'),
      child: DevicePreview(
        enabled: true,
        builder: (BuildContext context) {
          return AdminDashboard();
        },
      ),
    ),
  );
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,

      home: DashboardView(),
    );
  }
}
