import 'package:flutter/material.dart';
import 'package:rizzi/interface/chamados_oap.dart';
import 'package:rizzi/interface/eficiencia.dart';
import 'package:rizzi/interface/iapo.dart';
import 'package:rizzi/interface/modulo_oficinaoap.dart';
import 'package:rizzi/interface/modulo_pecasoap.dart';
import 'package:rizzi/interface/modulo_recepcaooap.dart';
import 'package:rizzi/interface/modulo_sistemamedidas.dart';
import 'package:rizzi/interface/pecas_oap.dart';
import 'package:rizzi/interface/recepcao_oap.dart';
import 'package:rizzi/interface/separacao_antecipada.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page
class moduloOap extends StatefulWidget {
  _moduloOap createState() => _moduloOap();
}

class _moduloOap extends State<moduloOap> {
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
                                    builder: (context) => moduloOficinaoap()));
                          },
                          child: Text('Oficina')),
                    ),
                  ),
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
                                    builder: (context) =>
                                        modulo_sistemamedidas()));
                          },
                          child: Text('Planejamento')),
                    ),
                  ),
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
                                    builder: (context) => pecasOap()));
                          },
                          child: Text('Peças')),
                    ),
                  ),
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
                                    builder: (context) => recepcaooap()));
                          },
                          child: Text('Recepção')),
                    ),
                  ),
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
                                    builder: (context) => chamadosoap()));
                          },
                          child: Text('Chamados')),
                    ),
                  ),
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
                                    builder: (context) => Telamenu()));
                          },
                          child: Text('Menu inicial')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
