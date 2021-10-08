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
        appBar: AppBar(title: Text('Página Inicial')),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TelaLogin()));
                    },
                    child: Text('Login')),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TelaLogin()));
                      },
                      child: Text('Termos de Uso')))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
