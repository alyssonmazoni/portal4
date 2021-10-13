import 'package:flutter/material.dart';
import 'package:rizzi/interface/cad_cit.dart';
import 'package:rizzi/interface/cl1oap_conta.dart';
import 'package:rizzi/interface/pos_venda.dart';
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
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        child: Column(children: [
          Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
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
          Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cl1oapconta()));
                        },
                        child: Text('CL-1')),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sistemamedidasoap()));
                        },
                        child: Text('Plano de Ação')),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cadcit()));
                        },
                        child: Text('Cadastro CIT')),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => posvenda()));
                        },
                        child: Text('Voltar')),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center),
        ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
      ),
    );
  }
}
