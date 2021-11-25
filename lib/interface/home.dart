import 'package:flutter/material.dart';
import 'package:rizzi/interface/resumo_oss.dart';
import 'package:rizzi/interface/tela_login.dart';
import 'tela_login.dart';

/// Provides a UI to select a authentication type page
class SystemHome extends StatefulWidget {
  _SystemHome createState() => _SystemHome();
}

class _SystemHome extends State<SystemHome> {
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
