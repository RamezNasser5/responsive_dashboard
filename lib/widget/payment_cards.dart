import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/payment_card_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/payment_card.dart';

class PaymentCards extends StatefulWidget {
  const PaymentCards({super.key});

  @override
  State<PaymentCards> createState() => _PaymentCardsState();
}

class _PaymentCardsState extends State<PaymentCards> {
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

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: paymentCards.asMap().entries.map((e) {
        int index = e.key;
        PaymentCardModel paymentCardModel = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GestureDetector(
                  onTap: () {
                    if (index != currentIndex) {
                      setState(() {
                        currentIndex = index;
                      });
                    }
                  },
                  child: PaymentCard(
                    paymentCardModel: paymentCardModel,
                    isActive: index == currentIndex,
                  )),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              if (index != currentIndex) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            child: PaymentCard(
              paymentCardModel: paymentCardModel,
              isActive: index == currentIndex,
            ),
          ));
        }
      }).toList(),
    );
  }
}
