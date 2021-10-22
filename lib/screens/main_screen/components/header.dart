import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: const Text(
          "Sebastian Müller",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
