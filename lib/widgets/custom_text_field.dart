import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: AppStyles.semiBold16(context).copyWith(color: Color(0xFFAAAAAA)),
      ),
    );
  }
}
