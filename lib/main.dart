import 'package:flutter/material.dart';
import 'package:game_project/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Snake Game",
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
