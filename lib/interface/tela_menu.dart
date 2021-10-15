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
        appBar: AppBar(title: Text('Portal')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Column(children: [
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
                                  builder: (context) => posvenda()));
                        },
                        child: Text('Pós Vendas')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {}, // falta direcionar para tela xpto
                        child: Text('Vendas')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start),
          ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
        ));
  }
}
