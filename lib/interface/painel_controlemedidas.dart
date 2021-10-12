import 'package:flutter/material.dart';
import 'package:rizzi/interface/age_recep.dart';
import 'package:rizzi/interface/desempenho_oficina.dart';
import 'package:rizzi/interface/entrega_veic.dart';
import 'package:rizzi/interface/indicadores_oficina.dart';
import 'package:rizzi/interface/nps_csi.dart';
import 'package:rizzi/interface/pecas_medidas.dart';
import 'package:rizzi/interface/rep_manutencao.dart';
import 'package:rizzi/interface/sistema_medidasoap.dart';

/// Provides a UI to select a authentication type page
class painelmedidasoap extends StatefulWidget {
  _painelmedidasoap createState() => _painelmedidasoap();
}

class _painelmedidasoap extends State<painelmedidasoap> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Página Inicial')),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: Column(children: [
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 14,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => npscsi()));
                          },
                          child: Text('1-NPS / CSI ')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 10,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => agerecep()));
                          },
                          child: Text('2-AGENDAMENTO / RECEPÇÃO')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 14,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pecasmedidas()));
                          },
                          child: Text('3-Peças')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 14,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => repmanutencao()));
                          },
                          child: Text('4-REPARO E MANUT.')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 14,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => entregaveic()));
                          },
                          child: Text('5-ENTREGA DO VEÍCULO')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 14,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => desempenhooficina()));
                          },
                          child: Text('6-DESEMPENHO OFICINA MECÂNICA')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 14,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        indicadoresoficina()));
                          },
                          child: Text('7-INDICADORES DA OFICINA')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 14,
                      width: 5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sistemamedidasoap()));
                          },
                          child: Text('Sistema Medidas')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
