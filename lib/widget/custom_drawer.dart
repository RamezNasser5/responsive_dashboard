import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/active_and_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widget/drawer_list_view.dart';
import 'package:responsive_dashboard/widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.assetsImagesNunito,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(child: DrawerListView()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  item: DrawerItemModel(
                    image: Assets.assetsImagesSetting,
                    title: 'Setting system',
                  ),
                ),
                InActiveDrawerItem(
                  item: DrawerItemModel(
                    image: Assets.assetsImagesLogout,
                    title: 'Logout account',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
