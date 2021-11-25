import 'package:flutter/material.dart';
import 'package:rizzi/interface/resumo_oss.dart';
import 'package:rizzi/interface/resumo_pecas.dart';

/// Provides a UI to select a authentication type page
class Iapo extends StatefulWidget {
  _Iapo createState() => _Iapo();
}

class _Iapo extends State<Iapo> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('iapo')),
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
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResumoOss()));
                          },
                          child: Text('Resumo OS(s)')),
                    ),
                  ),
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
                                    builder: (context) => ResumoPecas()));
                          },
                          child: Text('Resumo Peças')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
