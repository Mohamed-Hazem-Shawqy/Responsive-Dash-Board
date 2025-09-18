import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/core/utils/images_generate.dart';
import 'package:responsive_dash_board/feature/manager/provider.dart';
import 'package:responsive_dash_board/feature/widgets/drawer_list_view.dart';
import 'package:responsive_dash_board/feature/widgets/info_list_tile.dart';
import 'package:responsive_dash_board/feature/widgets/setting_logout.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ActiveAndInactiveItemDrawer(),
      child: Container(
        width: MediaQuery.sizeOf(context).width * .7,
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: InfoListTile(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
            DrawerListView(),

            SliverFillRemaining(
              hasScrollBody: false,
              child: SeetingAndLogout(),
            ),
          ],
        ),
      ),
    );
  }
}
