import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/payment_card_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class InActivePaymentCard extends StatelessWidget {
  const InActivePaymentCard({
    super.key,
    required this.paymentCardModel,
  });

  final PaymentCardModel paymentCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
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
              const Expanded(child: SizedBox()),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
          const SizedBox(height: 20),
          Text(paymentCardModel.title, style: AppStyles.styleMedium16(context)),
          Text(paymentCardModel.subtitle,
              style: AppStyles.styleRegular14(context)),
          Text(paymentCardModel.price,
              style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}

class ActivePaymentCard extends StatelessWidget {
  const ActivePaymentCard({
    super.key,
    required this.paymentCardModel,
  });

  final PaymentCardModel paymentCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
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
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            paymentCardModel.title,
            style:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          Text(paymentCardModel.subtitle,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA))),
          Text(
            paymentCardModel.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
