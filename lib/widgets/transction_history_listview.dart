import 'package:admin_dashboard/models/transactin_history_model.dart';
import 'package:admin_dashboard/widgets/transction_item.dart';
import 'package:flutter/material.dart';

class TransctionHistoryListview extends StatelessWidget {
  const TransctionHistoryListview({super.key});

  static const items = [
    TransactinHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isIncome: true,
    ),
    TransactinHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isIncome: false,
    ),
    TransactinHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isIncome: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => TransctionItem(transctionHistoryModel: items[index]),
    );
  }
}
