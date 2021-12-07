import 'package:flutter/material.dart';
import 'package:rizzi/interface/ag1_dart.dart';

/// Provides a UI to select a authentication type page
class ModuloRecepcaooap extends StatefulWidget {
  _ModuloRecepcaooap createState() => _ModuloRecepcaooap();
}

class _ModuloRecepcaooap extends State<ModuloRecepcaooap> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('modulo recepção')),
        body: Container(
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
                                    builder: (context) => Ag1()));
                          },
                          child: Text('Agendamento')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
