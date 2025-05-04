import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.light, required this.title});
  final String title;
  final bool light;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: light ? Colors.transparent : Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: CustomText(
          text: title,
          style: AppStyles.semiBold18(
            context,
          ).copyWith(color: light ? Color(0xFF4DB7F2) : Colors.white),
        ),
      ),
    );
  }
}
