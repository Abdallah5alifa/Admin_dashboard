import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/utils/text_manager.dart';
import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:admin_dashboard/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransctionSection extends StatelessWidget {
  const LatestTransctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        CustomText(text:TextManager.latestTransaction, style: AppStyles.semiBold16(context)),
        LatestTransctionListView(),
      ],
    );
  }
}
