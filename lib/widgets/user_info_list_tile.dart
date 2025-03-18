import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key, required this.userInfoModel,    
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title, style: AppStyles.semiBold16),
          subtitle: Text(userInfoModel.subTitle, style: AppStyles.regular12),
        ),
      ),
    );
  }
}
