

import 'package:admin_dashboard/models/all_expensess_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/all_expensess_item_header.dart';
import 'package:flutter/material.dart';

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          // side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: itemModel.image,
            imageBackColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          SizedBox(height: 34),
          Text(itemModel.title,style: AppStyles.mediam16.copyWith(color: Colors.white)),
          SizedBox(height: 8),
          Text(itemModel.date,style: AppStyles.regular14.copyWith(color: Color(0xFFFAFAFA))),
          SizedBox(height: 16),
          Text(itemModel.price,style: AppStyles.semiBold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
