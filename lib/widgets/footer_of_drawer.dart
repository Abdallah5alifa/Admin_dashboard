
import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/utils/text_manager.dart';
import 'package:admin_dashboard/widgets/active_and_in_active.dart';
import 'package:flutter/material.dart';

class FooterOfDrawer extends StatelessWidget {
  const FooterOfDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: SizedBox(height: 25)),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: TextManager.settingSystem,
            image: AssetsManager.imagesSetting,
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: TextManager.logoutAccount,
            image: AssetsManager.imagesLogout,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
