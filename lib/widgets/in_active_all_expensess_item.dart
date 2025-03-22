
import 'package:admin_dashboard/models/all_expensess_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/all_expensess_item_header.dart';
import 'package:flutter/material.dart';


class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: itemModel.image,
          ),
          SizedBox(height: 34),
          FittedBox(fit: BoxFit.scaleDown, child: Text(itemModel.title,style: AppStyles.mediam16(context))),
          SizedBox(height: 8),
          FittedBox(fit: BoxFit.scaleDown, child: Text(itemModel.date,style: AppStyles.regular14(context))),
          SizedBox(height: 16),
          FittedBox(fit: BoxFit.scaleDown, child: Text(itemModel.price,style: AppStyles.semiBold24(context))),
        ],
      ),
    );
  }
}
