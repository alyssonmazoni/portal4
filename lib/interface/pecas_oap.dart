import 'package:flutter/material.dart';
import 'package:rizzi/interface/iapo.dart';
import 'package:rizzi/interface/separacao_antecipada.dart';

/// Provides a UI to select a authentication type page
class pecasOap extends StatefulWidget {
  _pecasOap createState() => _pecasOap();
}

class _pecasOap extends State<pecasOap> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Modulo OAP')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
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
                                    builder: (context) => Iapo()));
                          },
                          child: Text('IAPO')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                                    builder: (context) =>
                                        SeparacaoAntecipada()));
                          },
                          child: Text('Separação Antecipada')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
