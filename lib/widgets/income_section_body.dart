import 'package:admin_dashboard/utils/size_config.dart';
import 'package:admin_dashboard/widgets/income_chart.dart';
import 'package:admin_dashboard/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return (width >= SizeConfig.desktop && width < 1750)
        ? SizedBox()
        : Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(flex: 2, child: IncomeDetails()),
          ],
        );
  }
}
