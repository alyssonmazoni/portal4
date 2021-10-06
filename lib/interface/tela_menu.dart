import 'package:flutter/material.dart';
import 'package:rizzi/interface/pos_venda.dart';

/// Provides a UI to select a authentication type page
class Telamenu extends StatefulWidget {
  _Telamenu createState() => _Telamenu();
}

class _Telamenu extends State<Telamenu> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          child: Column(children: [
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => posvenda()));},

                          child: Text('Pós Vendas')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {}, // falta direcionar para tela xpto
                          child: Text('Vendas')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
