import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:admin_dashboard/widgets/custom_dot_indecator.dart';
import 'package:admin_dashboard/widgets/income_section.dart';
import 'package:admin_dashboard/widgets/my_card_pageview.dart';
import 'package:admin_dashboard/widgets/transction_history.dart';
import 'package:admin_dashboard/widgets/transction_history_listview.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  static PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        CustomContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Text('My Card', style: AppStyles.semiBold20(context)),
              MyCardPageview(controller: controller),
              CustomDotIndecator(controller: controller),
              Divider(height: 30, color: Color(0xFFF1F1F1)),
              TransctionHistory(),
              TransctionHistoryListview(),
            ],
          ),
        ),
        SizedBox(height: 16),
        IncomeSection(),
      ],
    );
  }
}


