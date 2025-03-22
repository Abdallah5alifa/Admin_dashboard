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
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60,minWidth: 50),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                maxRadius: 30,
                minRadius: 30,
                backgroundColor: imageBackColor ?? Color(0xFFFAFAFA),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
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
