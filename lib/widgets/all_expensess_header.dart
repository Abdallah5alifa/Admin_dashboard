import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/drop_dowen.dart';
import 'package:flutter/material.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('All Expensess', style: AppStyles.semiBold20(context)),
        Expanded(child: SizedBox()),
        CustomDropDown()
      ],
    );
  }
}