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
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer Email',
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(title: 'Item name', hint: 'Type Item name'),
            ),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(child: CustomButton(
              title: 'Add more details',
              light: true,
            )),
            Expanded(child: CustomButton(
              title: 'Send Money',
              light: false,
            )),
          ],
        ),
      ],
    );
  }
}
