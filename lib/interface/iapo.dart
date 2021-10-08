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
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Column(children: [
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 15,
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
                      height: 15,
                      width: 15,
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
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {}, //Falta criar o Dashbord

                          child: Text('Dashbord')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
