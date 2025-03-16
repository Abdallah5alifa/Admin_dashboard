
import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });


  static const List <DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: 'Dashboard',
      image: AssetsManager.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transactions',
      image: AssetsManager.imagesMyTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: AssetsManager.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: AssetsManager.imagesWelletAcount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: AssetsManager.imagesMyInvestment,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(drawerItemModel: drawerItems[index]),
        );
      },
    );
  }
}
