import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/utils/text_manager.dart';
import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:admin_dashboard/widgets/drop_dowen.dart';
import 'package:flutter/material.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomText(text: TextManager.allExpenses, style: AppStyles.semiBold20(context)),
        Expanded(child: SizedBox()),
        CustomDropDown()
      ],
    );
  }
}