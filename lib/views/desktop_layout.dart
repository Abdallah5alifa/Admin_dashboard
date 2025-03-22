import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:admin_dashboard/widgets/expenses_and_invoice_section.dart';
import 'package:admin_dashboard/widgets/my_card_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32,
      children: [Expanded(child: CustomDrawer()), Scrolling(), SizedBox()],
    );
  }
}

class Scrolling extends StatelessWidget {
  const Scrolling({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.0,right: 32),
                    child: ExpensesAndIvoiceSection(),
                  ),
                ),
                Expanded(child: MyCardSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
