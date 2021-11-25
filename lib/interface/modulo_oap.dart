import 'package:flutter/material.dart';
import 'package:rizzi/interface/modulo_oficinaoap.dart';
import 'package:rizzi/interface/modulo_sistemamedidas.dart';
import 'package:rizzi/interface/pecas_oap.dart';

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
                      width: 150,
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
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 150,
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
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => modulo_sistemamedidas()));
                          },
                          child: Text('Sistema Medidas')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
