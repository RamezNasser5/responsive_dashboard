import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/payment_card_model.dart';
import 'package:responsive_dashboard/widget/active_and_inactive_payment_card.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard(
      {super.key, required this.paymentCardModel, required this.isActive});

  final PaymentCardModel paymentCardModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActivePaymentCard(paymentCardModel: paymentCardModel)
        : InActivePaymentCard(paymentCardModel: paymentCardModel);
  }
}
