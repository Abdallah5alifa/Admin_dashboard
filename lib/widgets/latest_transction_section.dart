import 'package:admin_dashboard/utils/app_styles.dart';
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
        Text('Latest Transaction', style: AppStyles.semiBold16),
        LatestTransctionListView(),
      ],
    );
  }
}
