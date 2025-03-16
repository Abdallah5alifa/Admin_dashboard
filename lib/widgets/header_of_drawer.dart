
import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/widgets/active_and_in_active.dart';
import 'package:flutter/material.dart';

class HeederOfDrawer extends StatelessWidget {
  const HeederOfDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: SizedBox(height: 25)),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Setting system',
            image: AssetsManager.imagesSetting,
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Logout account',
            image: AssetsManager.imagesLogout,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
