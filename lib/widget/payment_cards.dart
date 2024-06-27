import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/payment_card_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/payment_card.dart';

class PaymentCards extends StatelessWidget {
  const PaymentCards({super.key});

  final List<PaymentCardModel> paymentCards = const [
    PaymentCardModel(
      image: Assets.assetsImagesBalance,
      title: 'Balance',
      subtitle: 'April 2022',
      price: r'$20,125',
    ),
    PaymentCardModel(
      image: Assets.assetsImagesIncome,
      title: 'Income',
      subtitle: 'April 2022',
      price: r'$20,125',
    ),
    PaymentCardModel(
      image: Assets.assetsImagesExpenses,
      title: 'Expenses',
      subtitle: 'April 2022',
      price: r'$20,125',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: paymentCards.length,
        itemBuilder: (context, index) => PaymentCard(
          paymentCardModel: paymentCards[index],
        ),
      ),
    );
  }
}
