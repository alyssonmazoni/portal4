import 'package:flutter/material.dart';
import 'package:rizzi/interface/eficiencia.dart';
import 'package:rizzi/interface/iapo.dart';
import 'package:rizzi/interface/modulo_oap.dart';
import 'package:rizzi/interface/oficina_oap.dart';
import 'package:rizzi/interface/separacao_antecipada.dart';

/// Provides a UI to select a authentication type page
class posvenda extends StatefulWidget {
  _posvenda createState() => _posvenda();
}

class _posvenda extends State<posvenda> {
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
                      height: 15,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => moduloOap()));
                          },
                          child: Text('Modulo OAP')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
