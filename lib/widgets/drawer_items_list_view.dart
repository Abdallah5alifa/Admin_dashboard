import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: AssetsManager.imagesDashboard),
    DrawerItemModel(
      title: 'My Transactions',
      image: AssetsManager.imagesMyTransaction,
    ),
    DrawerItemModel(title: 'Statistics', image: AssetsManager.imagesStatistics),
    DrawerItemModel(
      title: 'Wallet Account',
      image: AssetsManager.imagesWelletAcount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: AssetsManager.imagesMyInvestment,
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
