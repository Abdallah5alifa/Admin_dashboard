

import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HeaderOfQuickInvoice extends StatelessWidget {
  const HeaderOfQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Quick Invoice', style: AppStyles.semiBold20),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(Icons.add, color: Color(0xFF4EB7F2),),
        )
      ],
    );
  }
}