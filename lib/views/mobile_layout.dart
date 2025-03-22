
import 'package:admin_dashboard/widgets/expenses_and_invoice_section.dart';
import 'package:admin_dashboard/widgets/my_card_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpensesAndIvoiceSection(),
          MyCardSection(),
        ],
      ),
    );
  }
}