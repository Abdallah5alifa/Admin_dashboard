import 'package:admin_dashboard/models/income_item_details_model.dart';
import 'package:admin_dashboard/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeItemDetailsModel> incomeItemDetails = [
    IncomeItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xFF208BC7),
    ),
    IncomeItemDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xFF4EB7F2),
    ),
    IncomeItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xFF064061),
    ),
    IncomeItemDetailsModel(
      title: 'Other',
      value: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: incomeItemDetails.length,
      itemBuilder:
          (context, index) => IncomeDetailsItem(
            incomeItemDetailsModel: incomeItemDetails[index],
          ),
    );
  }
}
