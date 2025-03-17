import 'package:admin_dashboard/models/all_expensess_item_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/widgets/all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() => _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
   final List<AllExpensessItemModel> allExpensessItems = [
    AllExpensessItemModel(
      image: AssetsManager.imagesBalance,
      title: 'Balance',
      date: 'April 2023',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: AssetsManager.imagesIncome,
      title: 'Income',
      date: 'April 2023',
      price: r'$20,129',
    ),
    AllExpensessItemModel(
      image: AssetsManager.imagesExpenses,
      title: 'Expensess',
      date: 'April 2023',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          allExpensessItems.asMap().entries.map((entry) {
            int index = entry.key;
            var item = entry.value;
            return Expanded(
              child:
                  (index == 0 || index == allExpensessItems.length - 1)
                      ? InkWell(
                        onTap: () {
                          updateIndex(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: AllExpensessItem(itemModel: item, isActive: selectedIndex == index,),
                        ),
                      )
                      : InkWell(
                        onTap: () {
                          updateIndex(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: AllExpensessItem(itemModel: item, isActive: selectedIndex == index,),
                        ),
                      ),
            );
          }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
