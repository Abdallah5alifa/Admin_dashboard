import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:admin_dashboard/widgets/header_of_quick_invoice.dart';
import 'package:admin_dashboard/widgets/latest_transction_section.dart';
import 'package:admin_dashboard/widgets/quick_invoce_form.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderOfQuickInvoice(),
          LatestTransctionSection(),
          Divider(height: 48, color: Color(0xFFF1F1F1)),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
