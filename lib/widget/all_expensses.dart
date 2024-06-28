import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expensses_header.dart';
import 'package:responsive_dashboard/widget/payment_cards.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundCustomWidget(
      padding: 20.0,
      child: Column(
        children: [
          AllExpensesHeaser(),
          SizedBox(height: 20),
          PaymentCards(),
        ],
      ),
    );
  }
}

class BackgroundCustomWidget extends StatelessWidget {
  const BackgroundCustomWidget({
    super.key,
    required this.child,
    required this.padding,
  });

  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: child,
    );
  }
}
