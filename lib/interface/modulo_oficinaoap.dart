import 'package:flutter/material.dart';
import 'package:rizzi/interface/eficiencia.dart';
import 'package:rizzi/interface/separacao_antecipada.dart';
import 'package:rizzi/interface/servico_expresso.dart';
import 'package:rizzi/interface/servico_externo.dart';

/// Provides a UI to select a authentication type page
class moduloOficinaoap extends StatefulWidget {
  _moduloOficinaoap createState() => _moduloOficinaoap();
}

class _moduloOficinaoap extends State<moduloOficinaoap> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('modulo_oficinaoap')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
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
                                  builder: (context) => eficiencia()));
                        },
                        child: Text('Eficiência')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                                  builder: (context) => servicoexpresso()));
                        },
                        child: Text('Serviço Expresso')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                                  builder: (context) => servicoexterno()));
                        },
                        child: Text('Serviço Externo')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
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
                                  builder: (context) => SeparacaoAntecipada()));
                        },
                        child: Text('Separação Antencipada')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
