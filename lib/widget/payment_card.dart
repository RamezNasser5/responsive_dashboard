import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/payment_card_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.paymentCardModel});

  final PaymentCardModel paymentCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffFAFAFA),
                  ),
                  child: SvgPicture.asset(paymentCardModel.image),
                ),
                // const Expanded(child: SizedBox()),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
            const SizedBox(height: 20),
            Text(paymentCardModel.title,
                style: AppStyles.styleMedium16(context)),
            Text(paymentCardModel.subtitle,
                style: AppStyles.styleRegular14(context)),
            Text(paymentCardModel.price,
                style: AppStyles.styleSemiBold24(context)),
          ],
        ),
      ),
    );
  }
}
