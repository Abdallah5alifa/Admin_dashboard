import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsManager.imagesCard)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Color(0xFF4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 30, right: 40, top: 15),
              title: Text(
                'Name card',
                style: AppStyles.regular16.copyWith(color: Colors.white),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.mediam20),
              trailing: SvgPicture.asset(AssetsManager.imagesGallery),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text('0918 8126 5876 1452', style: AppStyles.semiBold24.copyWith(color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text('12/20 - 123', style: AppStyles.mediam16.copyWith(color: Colors.white)),
            ),
            SizedBox(height: 15),

          ],
        ),
      ),
    );
  }
}
