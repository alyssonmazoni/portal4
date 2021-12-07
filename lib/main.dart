import 'package:flutter/material.dart';
import './interface/home.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
