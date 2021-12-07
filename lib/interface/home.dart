import 'package:flutter/material.dart';
import 'package:rizzi/interface/resumo_oss.dart';
import 'package:rizzi/interface/tela_login.dart';
import 'tela_login.dart';
import 'package:firebase_core/firebase_core.dart';

/// Provides a UI to select a authentication type page
class SystemHome extends StatefulWidget {
  _SystemHome createState() => _SystemHome();
}

class _SystemHome extends State<SystemHome> {

  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  void pushPageFromHome(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResumoOss()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TelaLogin()));
                    },
                    child: Text('Acesso ao Portal')),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}