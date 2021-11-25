// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:rizzi/interface/eficiencia.dart';
import 'package:rizzi/interface/modulo_oap.dart';
import 'package:rizzi/interface/separacao_antecipada.dart';

/// Provides a UI to select a authentication type page

class recepcaooap extends StatefulWidget {
  _recepcaooap createState() => _recepcaooap();
}

class _recepcaooap extends State<recepcaooap> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: Column(children: [
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => eficiencia()));
                          },
                          child: Text('Eficiência')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SeparacaoAntecipada()));
                          },
                          child: Text('Separação Antecipada')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => moduloOap()));
                          },
                          child: Text('M.OAP')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
