import 'package:flutter/material.dart';
import 'dart:async';

class BubbleSortProvider with ChangeNotifier {
  List<int> array = [];

  final TextEditingController arrayInputController = TextEditingController();

  ///Swapping using temporary variable
  void swap(int index) {
    int temp = array[index];
    array[index] = array[index + 1];
    array[index + 1] = temp;
    notifyListeners();
  }

  ///Basic implementation of Bubble sort
  Future<void> bubbleSort() async {
    fillArray();
    for (int i = 0; i < array.length - 1; i++) {
      for (int j = 0; j < array.length - 1; j++) {
        if (array[j] > array[j + 1]) {
          swap(j);
          await Future.delayed(const Duration(seconds: 1));
        }
      }
    }
    reset();
  }

  void fillArray() {
    var splitInput = arrayInputController.text.replaceAll(' ', '').split(",");
    for (String a in splitInput) {
      array.add(
        int.parse(a),
      );
    }
    notifyListeners();
  }

  void reset() {
    array = [];
    arrayInputController.text = "";
  }
}
