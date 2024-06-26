import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expensses_header.dart';
import 'package:responsive_dashboard/widget/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
            ],
          ),
        ),
      ],
    );
  }
}

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeaser(),
        ],
      ),
    );
  }
}
