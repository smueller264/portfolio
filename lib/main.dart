import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'screens/main_screen/main_screen.dart';
import 'screens/main_screen/provider/main_screen_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<MainScreenProvider>(
        create: (context) => MainScreenProvider(),
        child: const MainScreen(),
      ),
    );
  }
}
