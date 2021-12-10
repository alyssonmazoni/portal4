import 'package:flutter/material.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/modulo_oap.dart';

/// Provides a UI to select a authentication type page
// ignore: camel_case_types
class posvenda extends StatefulWidget {
  _posvenda createState() => _posvenda();
}

class _posvenda extends State<posvenda> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pós Vendas')),
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
                                      builder: (context) => ModuloOap()));
                            },
                            child: Text('Modulo OAP')),
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
