import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:admin_dashboard/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title,hint;

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text:title, style: AppStyles.mediam16(context),),
        CustomTextField(
          hint: hint,
        )
      ],
    );
  }
}