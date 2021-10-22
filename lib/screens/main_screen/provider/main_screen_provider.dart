import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../pages/bubblesort_page/bubblesort_page.dart';
import '../../../pages/bubblesort_page/provider/bubblesort_provider.dart';
import '../../../pages/mergesort_page/mergesort_page.dart';
import '../../../widgets/content_view.dart';
import '../../../widgets/custom_tab.dart';

class MainScreenProvider with ChangeNotifier {
  final List<ContentView> tabs = [
    ContentView(
      tab: const CustomTab(
        title: BubbleSortPage.title,
      ),
      content: ChangeNotifierProvider<BubbleSortProvider>(
        create: (context) => BubbleSortProvider(),
        child: const BubbleSortPage(),
      ),
    ),
    ContentView(
      tab: const CustomTab(
        title: MergeSortPage.title,
      ),
      content: const MergeSortPage(),
    ),
  ];
}
