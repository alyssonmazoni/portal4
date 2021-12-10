import 'package:flutter/material.dart';
import 'package:rizzi/interface/age_recep.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/nps_csi.dart';
import 'package:rizzi/interface/pecas_medidas.dart';
import 'package:rizzi/interface/rep_manutencao.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page

class PainelControleMedidas extends StatefulWidget {
  _PainelControleMedidas createState() => _PainelControleMedidas();
}

class _PainelControleMedidas extends State<PainelControleMedidas> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Painel Medidas')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(border: Border.all(color: Colors.white70)),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 40,
                    width: 40,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 40,
                    width: 40,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Preenchimento do Sistema de Medidas',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 20,
                    width: 20,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 20,
                        width: 15,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NpsCsi()));
                            },
                            child: Text('1')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 20,
                        width: 15,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AgeRecep()));
                            },
                            child: Text('2')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 20,
                        width: 15,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PecasMedidas()));
                            },
                            child: Text('3')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 20,
                        width: 15,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RepManutencao()));
                            },
                            child: Text('4')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.grey[850],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.blue,
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  NPS/CSI',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.grey[850],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.cyan[600],
                      child: Text(
                        "5",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  DESEMPENHO OFICINA',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 5,
                    width: 5,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.grey[850],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.green,
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  ENTREGA DO VEÍCULO',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.green[800],
                      child: Text(
                        "6",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  AGENDAMENTO/RECEPÇÃO',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 5,
                    width: 5,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.grey[850],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.orange,
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  PEÇAS',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.teal,
                      child: Text(
                        "7",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  INDICADORES OFICINA',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 5,
                    width: 5,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.grey[850],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.purple,
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  REP.MANUTENÇÃO',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      color: Colors.indigo,
                      child: Text(
                        "8",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '  INDICADORES EFICIÊNCIA',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 20,
                    width: 20,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
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
                                    builder: (context) => Telamenu()));
                          },
                          child: Text('Voltar',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black)),
                        ),
                      ),
                    ),
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
                                    builder: (context) => SystemHome()));
                          },
                          child: Text('Sair',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ], mainAxisAlignment: MainAxisAlignment.center),
          ),
        ));
  }
}
