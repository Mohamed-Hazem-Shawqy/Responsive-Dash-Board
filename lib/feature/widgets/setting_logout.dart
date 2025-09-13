import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/core/utils/images_generate.dart';
import 'package:responsive_dash_board/feature/manager/provider.dart';
import 'package:responsive_dash_board/feature/model/drawer_item_model.dart';
import 'package:responsive_dash_board/feature/widgets/drawer_item.dart';

class SeetingAndLogout extends StatefulWidget {
  const SeetingAndLogout({super.key});

  @override
  State<SeetingAndLogout> createState() => _SeetingAndLogoutState();
}

class _SeetingAndLogoutState extends State<SeetingAndLogout>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    animation = Tween(begin: 0.0, end: -5.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
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
    return Column(
      children: [
        Expanded(child: SizedBox()),
        GestureDetector(
          onTap: () {
            context.read<ActiveAndInactiveItemDrawer>().isActive(5);
            context.read<ActiveAndInactiveItemDrawer>().triggerBounce(
              animationController,
            );
          },
          child: Selector<ActiveAndInactiveItemDrawer, bool>(
            selector: (context, value) => value.activeIndex == 5,
            builder: (BuildContext context, bool isActive, Widget? child) =>
                AnimatedBuilder(
                  animation: animation,
                  child: DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSetting,
                      title: 'Setting system',
                    ),
                    isselect: isActive,
                  ),
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, isActive ? animation.value : 0),
                      child: child,
                    );
                  },
                ),
          ),
        ),
        GestureDetector(
          onTap: () {
            context.read<ActiveAndInactiveItemDrawer>().isActive(6);
            context.read<ActiveAndInactiveItemDrawer>().triggerBounce(
              animationController,
            );
          },
          child: Selector<ActiveAndInactiveItemDrawer, bool>(
            selector: (context, value) => value.activeIndex == 6,
            builder: (context, isActive, child) => AnimatedBuilder(
              animation: animation,
              child: DrawerItem(
                drawerItemModel: DrawerItemModel(
                  image: Assets.imagesLogout,
                  title: 'Logout account',
                ),
                isselect: isActive,
              ),
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, isActive ? animation.value : 0),
                  child: child,
                );
              },
            ),

            //
          ),
        ),
        SizedBox(height: 48),
      ],
    );
  }
}
