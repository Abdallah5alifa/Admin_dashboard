import 'package:admin_dashboard/models/income_item_details_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeItemDetailsModel});

  final IncomeItemDetailsModel incomeItemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: incomeItemDetailsModel.color,
        ),
      ),
      title: Text(
        incomeItemDetailsModel.title,
        style: AppStyles.regular16(context),
      ),
      trailing: Text(incomeItemDetailsModel.value, style: AppStyles.mediam16(context).copyWith(color: Color(0xFF208CC8))),
    );
  }
}
