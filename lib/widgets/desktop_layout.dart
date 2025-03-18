import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:admin_dashboard/widgets/expenses_and_invoice_section.dart';
import 'package:admin_dashboard/widgets/my_card_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32,
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 2, child: ExpensesAndIvoiceSection()),
        Expanded(child: MyCardSection()),
      ],
    );
  }
}
