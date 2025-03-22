import 'package:admin_dashboard/models/transactin_history_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionHistoryModel});
  final TransactinHistoryModel transctionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(transctionHistoryModel.title, style: AppStyles.semiBold16(context)),
        subtitle: Text(transctionHistoryModel.date, style: AppStyles.regular16(context).copyWith(color: Color(0xFFAAAAAA))),
        trailing: Text(
          transctionHistoryModel.amount,
          style: AppStyles.semiBold20(context).copyWith(
            color:
                transctionHistoryModel.isIncome
                    ? Color(0xFFF3735E)
                    : Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
