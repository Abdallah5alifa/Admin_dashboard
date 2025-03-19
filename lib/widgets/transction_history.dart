import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Row(
          children: [
            Text('Transction History', style: AppStyles.semiBold20),
            Spacer(),
            Text('See All', style: AppStyles.mediam16.copyWith(color: Color(0xFF4EB7F2)),),
          ],
        ),
        Text('13 Apr 2025', style: AppStyles.mediam16.copyWith(color: Color(0xFFAAAAAA)),)
      ],
    );
  }
}