import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'provider/bubblesort_provider.dart';
import '../../widgets/custom_num_input.dart';

class BubbleSortPage extends StatelessWidget {
  const BubbleSortPage({Key? key}) : super(key: key);

  static const title = "BubleSort";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (context.watch<BubbleSortProvider>().array.isNotEmpty)
          Center(
            child: Container(
              child: Text(context.watch<BubbleSortProvider>().array.toString()),
            ),
          ),
        const SizedBox(
          height: 100,
        ),
        CustomNumInput(
            controller:
                context.watch<BubbleSortProvider>().arrayInputController,
            hintText: "Zahlen mit Komma getrennt eingeben..."),
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
