import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expensses_header.dart';
import 'package:responsive_dashboard/widget/payment_cards.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeaser(),
          PaymentCards(),
        ],
      ),
    );
  }
}
