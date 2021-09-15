import 'package:flutter/material.dart';
import './interface/home.dart';

void main() async {
  runApp(Initial());
}


class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:
        SystemHome()
    );
  }
}
