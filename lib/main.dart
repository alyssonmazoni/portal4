import 'package:flutter/material.dart';
import './interface/home.dart';

//import 'firebase_options.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  // options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(Initial());
}

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: SystemHome());
  }
}
