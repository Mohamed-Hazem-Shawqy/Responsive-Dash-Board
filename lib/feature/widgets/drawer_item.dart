
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/model/drawer_item_model.dart';
import 'package:responsive_dash_board/feature/widgets/active_drawer_icon.dart';
import 'package:responsive_dash_board/feature/widgets/inactive_drawe_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isselect,
  });
  final DrawerItemModel drawerItemModel;
  final bool isselect;

  @override
  Widget build(BuildContext context) {
    return isselect
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
