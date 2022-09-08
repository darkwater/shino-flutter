import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class AdaptiveScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;

  final bool screenWideDrawerGesture;

  const AdaptiveScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.backgroundColor,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.screenWideDrawerGesture = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return _buildLargeScreen(context);
        } else {
          return _buildSmallScreen();
        }
      },
    );
  }

  Widget _buildLargeScreen(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Row(
        children: [
          const Hero(
            tag: "largeNavigationDrawer",
            child: NavigationDrawer(),
          ),
          const VerticalDivider(
            width: 1,
            thickness: 1,
          ),
          Expanded(
            child: Scaffold(
              appBar: appBar,
              body: body,
              backgroundColor: backgroundColor,
              floatingActionButton: floatingActionButton,
              floatingActionButtonLocation: floatingActionButtonLocation,
              bottomNavigationBar: bottomNavigationBar,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallScreen() {
    return Scaffold(
      appBar: appBar,
      body: body,
      drawer: const NavigationDrawer(),
      drawerEdgeDragWidth: screenWideDrawerGesture ? 9999 : null,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
