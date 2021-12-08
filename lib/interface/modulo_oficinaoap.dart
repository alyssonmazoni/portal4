import 'package:flutter/material.dart';
import 'package:rizzi/interface/eficiencia.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/separacao_antecipada.dart';
import 'package:rizzi/interface/servico_expresso.dart';
import 'package:rizzi/interface/servico_externo.dart';

/// Provides a UI to select a authentication type page
class ModuloOficinaoap extends StatefulWidget {
  _ModuloOficinaoap createState() => _ModuloOficinaoap();
}

class _ModuloOficinaoap extends State<ModuloOficinaoap> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('modulo_oficinaoap')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
          child: Column(
              children: [
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Eficiencia()));
                            },
                            child: Text('Eficiência')),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.grey[850],
                      height: 5,
                      width: 5,
                    ),
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ServicoExpresso()));
                            },
                            child: Text('Serviço Expresso')),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.grey[850],
                      height: 5,
                      width: 5,
                    ),
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ServicoExterno()));
                            },
                            child: Text('Serviço Externo')),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.grey[850],
                      height: 5,
                      width: 5,
                    ),
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeparacaoAntecipada()));
                            },
                            child: Text('Separação Antecipada')),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.grey[850],
                      height: 5,
                      width: 5,
                    ),
                  ),
                ], mainAxisAlignment: MainAxisAlignment.center),
                Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 300,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SystemHome()));
                            },
                            child: Text('Sair')),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center),
        ));
  }
}
