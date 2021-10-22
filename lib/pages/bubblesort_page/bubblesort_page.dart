import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'provider/bubblesort_provider.dart';

class BubbleSortPage extends StatelessWidget {
  const BubbleSortPage({Key? key}) : super(key: key);

  static const title = "BubleSort";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: Text(context.watch<BubbleSortProvider>().array.toString()),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        TextButton(
          onPressed: () {
            context.read<BubbleSortProvider>().bubbleSort();
          },
          child: const Text(
            "Start",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
