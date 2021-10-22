import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:portfolio/themes/device_size.dart';
import '../provider/main_screen_provider.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        tabs: context
            .watch<MainScreenProvider>()
            .tabs
            .map(
              (e) => e.tab,
            )
            .toList(),
      ),
    );
  }
}
