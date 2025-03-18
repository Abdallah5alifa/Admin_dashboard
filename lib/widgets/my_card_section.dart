import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:admin_dashboard/widgets/custom_dot_indecator.dart';
import 'package:admin_dashboard/widgets/my_card_pageview.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  static PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text('My Card', style: AppStyles.semiBold20),
          MyCardPageview(controller: controller),
          CustomDotIndecator(controller: controller),
        ],
      ),
    );
  }
}
