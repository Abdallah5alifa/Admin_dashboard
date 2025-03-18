import 'package:admin_dashboard/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardPageview extends StatelessWidget {
  const MyCardPageview({super.key, required this.controller});
  final PageController controller ;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => MyCard()));
  }
}
