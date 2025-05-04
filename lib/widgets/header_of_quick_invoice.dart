

import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/utils/text_manager.dart';
import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HeaderOfQuickInvoice extends StatelessWidget {
  const HeaderOfQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         CustomText(text:TextManager.quickInvoice, style: AppStyles.semiBold20(context)),
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