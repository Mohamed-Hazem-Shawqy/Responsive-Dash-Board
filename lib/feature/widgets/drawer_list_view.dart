
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/core/utils/images_generate.dart';
import 'package:responsive_dash_board/feature/manager/provider.dart';
import 'package:responsive_dash_board/feature/model/drawer_item_model.dart';
import 'package:responsive_dash_board/feature/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView>
    with SingleTickerProviderStateMixin {
  final List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    animation = Tween(begin: 0.0, end: -8.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.read<ActiveAndInactiveItemDrawer>().isActive(index);
            context.read<ActiveAndInactiveItemDrawer>().triggerBounce(
              animationController,
            );
          },
          child: Selector<ActiveAndInactiveItemDrawer, bool>(
            selector: (context, value) => value.activeIndex == index,
            shouldRebuild: (previous, next) => previous != next,
            builder: (BuildContext context, isActive, Widget? child) {
              return AnimatedBuilder(
                animation: animation,
                child: DrawerItem(
                  drawerItemModel: items[index],
                  isselect: isActive,
                ),
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, isActive ? animation.value : 0),
                    child: child,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
