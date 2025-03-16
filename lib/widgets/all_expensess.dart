import 'package:admin_dashboard/widgets/all_expensess_header.dart';
import 'package:flutter/material.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        children: [
          AllExpensessHeader(),
        ],
      ),
    );
  }
}

