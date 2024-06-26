import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.assetsImagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesTransaction,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesStatistcs,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesWallet,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.assetsImagesInvestments,
      title: 'My Investments',
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (index != activeIndex) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(
            item: items[index],
            isSelected: index == activeIndex,
          ),
        ),
      ),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
