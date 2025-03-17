import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackColor,
  });

  final String image;
  final Color? imageColor, imageBackColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: imageBackColor ?? Color(0xFFFAFAFA),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              image,

              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: -3.14 / 2,
          child: SvgPicture.asset(
            AssetsManager.imagesArrowDown,
            colorFilter:imageColor == null ? null : ColorFilter.mode(
               Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
