import 'package:admin_dashboard/utils/text_manager.dart';
import 'package:admin_dashboard/widgets/custom_button.dart';
import 'package:admin_dashboard/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: TextManager.customerName,
                hint: TextManager.typeCustomerName,
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: TextManager.customerEmail,
                hint: TextManager.typeCustomerEmail,
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: TextManager.itemName,
                hint: TextManager.typeItemName,
              ),
            ),
            Expanded(
              child: TitleTextField(title: TextManager.itemAmount, hint: 'USD'),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: CustomButton(
                title: TextManager.addMoreDetails,
                light: true,
              ),
            ),
            Expanded(
              child: CustomButton(title: TextManager.sendMoney, light: false),
            ),
          ],
        ),
      ],
    );
  }
}
