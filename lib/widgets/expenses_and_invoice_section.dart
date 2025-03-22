import 'package:admin_dashboard/widgets/all_expensess.dart';
import 'package:admin_dashboard/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class ExpensesAndIvoiceSection extends StatelessWidget {
  const ExpensesAndIvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 24, children: [AllExpensess(), QuickInvoice()]);
  }
}
