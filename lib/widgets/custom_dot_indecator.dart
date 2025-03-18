import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.controller});

  final PageController controller ;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller, 
      count: 3, // عدد النقاط
      effect: const ExpandingDotsEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: Colors.blue,
      ),
    );
  }
}