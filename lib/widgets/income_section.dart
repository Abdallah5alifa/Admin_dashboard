
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:admin_dashboard/widgets/drop_dowen.dart';
import 'package:admin_dashboard/widgets/income_section_body.dart';
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
              Text('Income', style: AppStyles.semiBold20(context)),
              Spacer(),
              CustomDropDown(),
            ],
          ),
          IncomeSectionBody()
        ],
      ),
    );
  }
}

