import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/utils/assets_manager.dart';
import 'package:admin_dashboard/utils/text_manager.dart';
import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  CustomDropDownState createState() => CustomDropDownState();
}

class CustomDropDownState extends State<CustomDropDown> {
  String? selectedValue; // القيمة المختارة
  List<String> items = ["Opt 1", "Opt 2", "Opt 3", "Opt 4"];

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFF1F1F1), width: 1.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: DropdownButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SvgPicture.asset(AssetsManager.imagesArrowDown),
          ),
          value: selectedValue,
          hint: CustomText(
            text: TextManager.monthly,
            style: AppStyles.mediam16(context),
          ),
          underline: SizedBox(), // 🔹 إزالة الخط السفلي
          isDense: true, // 🔹 تقليل المساحة الداخلية
          // padding: EdgeInsets.symmetric(horizontal: 8, ),
          borderRadius: BorderRadius.circular(12),
          items:
              items.map((String item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
        ),
      ),
    );
  }
}
