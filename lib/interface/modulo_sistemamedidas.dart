import 'package:flutter/material.dart';
import 'package:rizzi/interface/iapo.dart';
import 'package:rizzi/interface/recepcao_oap.dart';
import 'package:rizzi/interface/resumo_oss.dart';
import 'package:rizzi/interface/resumo_pecas.dart';
import 'package:rizzi/interface/separacao_antecipada.dart';
import 'package:rizzi/interface/sistema_medidasoap.dart';

/// Provides a UI to select a authentication type page
class modulo_sistemamedidas extends StatefulWidget {
  _modulo_sistemamedidas createState() => _modulo_sistemamedidas();
}

class _modulo_sistemamedidas extends State<modulo_sistemamedidas> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Column(children: [
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sistemamedidasoap()));
                          },
                          child: Text('Sistema de Medidas')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
