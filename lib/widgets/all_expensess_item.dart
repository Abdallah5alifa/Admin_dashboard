import 'package:admin_dashboard/models/all_expensess_item_model.dart';
import 'package:admin_dashboard/widgets/active_all_expensess_item.dart';
import 'package:admin_dashboard/widgets/in_active_all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });

  final AllExpensessItemModel itemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
          return ScaleTransition(scale: animation, child: child);
        },
      child: isActive
          ? ActiveAllExpensessItem(itemModel: itemModel)
          : InActiveAllExpensessItem(itemModel: itemModel),
    );
  }
}
