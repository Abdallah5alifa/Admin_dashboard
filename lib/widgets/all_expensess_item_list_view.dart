import 'package:admin_dashboard/models/all_expensess_item_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/widgets/all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
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
      spacing: 8,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
              itemModel: allExpensessItems[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
              itemModel: allExpensessItems[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
              itemModel: allExpensessItems[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //   children:
    //       allExpensessItems.asMap().entries.map((entry) {
    //         int index = entry.key;
    //         var item = entry.value;
    //         return Expanded(
    //           child: InkWell(
    //             onTap: () {
    //               updateIndex(index);
    //             },
    //             child: Padding(
    //               padding: EdgeInsets.symmetric(horizontal: index == 1 ? 8 : 0),
    //               child: AllExpensessItem(
    //                 itemModel: item,
    //                 isActive: selectedIndex == index,
    //               ),
    //             ),
    //           ),
    //         );
    //       }).toList(),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
