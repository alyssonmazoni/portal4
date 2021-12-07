import 'package:flutter/material.dart';
import 'package:rizzi/interface/cad_cit.dart';
import 'package:rizzi/interface/cl1oap_conta.dart';
import 'package:rizzi/interface/pos_venda.dart';
import 'package:rizzi/interface/sistema_medidasoap.dart';

/// Provides a UI to select a authentication type page
class ModuloSistemamedidas extends StatefulWidget {
  _ModuloSistemamedidas createState() => _ModuloSistemamedidas();
}

class _ModuloSistemamedidas extends State<ModuloSistemamedidas> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Modulo Sistema de Medidas')),
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
                                  builder: (context) => Sistemamedidasoap()));
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
                                  builder: (context) => Cl1oapConta()));
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
                                  builder: (context) => CadCit()));
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
              crossAxisAlignment: CrossAxisAlignment.start),
        ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
      ),
    );
  }
}
