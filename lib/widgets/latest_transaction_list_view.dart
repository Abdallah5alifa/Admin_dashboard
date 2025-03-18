import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const List items = [
    UserInfoModel(
      image: AssetsManager.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: AssetsManager.imagesAvatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: AssetsManager.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: AssetsManager.imagesAvatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items
                .map(
                  (e) =>
                      IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
                )
                .toList(),
      ),
    );
    
  }
}


// طريقة تانية
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //          userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );