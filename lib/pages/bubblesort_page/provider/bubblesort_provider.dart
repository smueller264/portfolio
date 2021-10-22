import 'package:flutter/material.dart';

class BubbleSortProvider with ChangeNotifier {
  List<int> array = [1, 3, 2, 5, 4];

  ///Swapping using temporary variable
  void swap(int index) {
    int temp = array[index];
    array[index] = array[index + 1];
    array[index + 1] = temp;
  }

  ///Basic implementation of Bubble sort
  void bubbleSort() {
    for (int i = 0; i < array.length - 1; i++) {
      for (int j = 0; j < array.length - 1; j++) {
        if (array[j] > array[j + 1]) {
          swap(j);
        }
      }
    }
  }
}
