import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/widgets/drawer_items_list_view.dart';
import 'package:admin_dashboard/widgets/header_of_drawer.dart';
import 'package:admin_dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 40,),),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: AssetsManager.imagesAvatar3,
                title:'Lenkan Okeowo' ,
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(hasScrollBody: false, child: HeederOfDrawer()),
        ],
      ),
    );
  }
}
