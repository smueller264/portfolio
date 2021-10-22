import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'components/header.dart';
import 'components/custom_tab_bar.dart';
import 'provider/main_screen_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: context.watch<MainScreenProvider>().tabs.length,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Header(),
            const CustomTabBar(),
            Expanded(
              child: TabBarView(
                children: context
                    .watch<MainScreenProvider>()
                    .tabs
                    .map((e) => e.content)
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
