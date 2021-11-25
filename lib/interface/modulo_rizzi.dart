import 'package:flutter/material.dart';
import 'package:rizzi/interface/age_recep.dart';
import 'package:rizzi/interface/desempenho_oficina.dart';
import 'package:rizzi/interface/entrega_veic.dart';
import 'package:rizzi/interface/grade_horas.dart';
import 'package:rizzi/interface/indicadores_oficina.dart';
import 'package:rizzi/interface/nps_csi.dart';
import 'package:rizzi/interface/pecas_medidas.dart';
import 'package:rizzi/interface/pos_venda.dart';
import 'package:rizzi/interface/rep_manutencao.dart';
import 'package:rizzi/interface/rizzi_cli.dart';
import 'package:rizzi/interface/rizzi_gps.dart';
import 'package:rizzi/interface/rizzi_pecas.dart';
import 'package:rizzi/interface/rizzi_rh.dart';
import 'package:rizzi/interface/rizzi_status.dart';
import 'package:rizzi/interface/sistema_medidasoap.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page
class modulorizzi extends StatefulWidget {
  _modulorizzi createState() => _modulorizzi();
}

class _modulorizzi extends State<modulorizzi> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Modulo Rizzi')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 20,
                        width: 15,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => rizzipecas()));
                            },
                            child: Text('1')),
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
                                      builder: (context) => rizzirh()));
                            },
                            child: Text('2')),
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
                                      builder: (context) => rizzistatus()));
                            },
                            child: Text('3')),
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
                                      builder: (context) => rizzigps()));
                            },
                            child: Text('4')),
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
                                      builder: (context) => gradehoras()));
                            },
                            child: Text('5')),
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
                                      builder: (context) => rizzicl1()));
                            },
                            child: Text('6')),
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
                                          indicadoresoficina()));
                            },
                            child: Text('7')),
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
                                          Sistemamedidasoap()));
                            },
                            child: Text('SM')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Legendas'),
                ),
              ),
              Row(
                  children: [
                    Expanded(
                      child: Text('1 - PEÇAS'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('2 - RECURSOS HUMANOS'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('3 - STATUS / SISTEMA'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('4 - PARAMETROS DE LOCALIZAÇÃO.'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('5 - PARAMETROS DE HORA.'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('6 - PARAMETROS DE CL-1.'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
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
                                      builder: (context) => Telamenu()));
                            },
                            child: Text('Voltar')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ),
        ));
  }
}
