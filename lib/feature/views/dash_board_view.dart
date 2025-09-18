import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/adaptive_layout.dart';
import 'package:responsive_dash_board/feature/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feature/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/feature/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/feature/widgets/tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xffE5E5E5),
      appBar: MediaQuery.sizeOf(context).width < 730
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 730 ? CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
