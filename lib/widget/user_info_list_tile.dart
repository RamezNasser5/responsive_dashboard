import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Column(
        children: [
          Text(
            title,
            style: AppStyles.styleSemiBold16(context),
          ),
          Text(
            subtitle,
            style: AppStyles.styleRegular14(context),
          ),
        ],
      ),
    );
  }
}
