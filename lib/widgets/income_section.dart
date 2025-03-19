
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:admin_dashboard/widgets/drop_dowen.dart';
import 'package:admin_dashboard/widgets/income_chart.dart';
import 'package:admin_dashboard/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Income', style: AppStyles.semiBold20),
              Expanded(child: SizedBox()),
              CustomDropDown(),
            ],
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails())
              ],
            ),
          )
        ],
      ),
    );
  }
}
