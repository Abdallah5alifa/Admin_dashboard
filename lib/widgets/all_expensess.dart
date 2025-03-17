import 'package:admin_dashboard/widgets/all_expensess_header.dart';
import 'package:admin_dashboard/widgets/all_expensess_item_list_view.dart';
import 'package:admin_dashboard/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        spacing: 16,
        children: [
          AllExpensessHeader(), 
          AllExpensessItemListView(),
          ],
      ),
    );
  }
}
