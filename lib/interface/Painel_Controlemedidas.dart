import 'package:flutter/material.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'package:rizzi/interface/Age_Recep.dart';
import 'package:rizzi/interface/Desempenho_Oficina.dart';
import 'package:rizzi/interface/Eficiencia_Sm.dart';
import 'package:rizzi/interface/Entrega_Veic.dart';
import 'package:rizzi/interface/Home.dart';
import 'package:rizzi/interface/Indicadores_Oficina.dart';
import 'package:rizzi/interface/Nps_Csi.dart';
import 'package:rizzi/interface/Pecas_Medidas.dart';
import 'package:rizzi/interface/Rep_Manutencao.dart';

/// Provides a UI to select a authentication type page

//menu01 tem todos os acessos

class PainelControleMedidas extends StatefulWidget {
  _PainelControleMedidas createState() => _PainelControleMedidas();
}

class _PainelControleMedidas extends State<PainelControleMedidas> {
  DateTime dateForm = DateTime.now();

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 30,
                      width: 60,
                      child: FittedBox(
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-1mIKnEWkQM6jFbVPitHANTOlzSNquTvo1AXqfMgF4K7tfbCH5QkCgqBiN-wF9bx75w&usqp=CAU'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(8),
                      height: 60,
                      width: 300,
                      child: FittedBox(
                        child: const Card(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Preenchimento do Sistema de Medidas',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 2,
                  width: 2,
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
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                  ),
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
                                    builder: (context) => EntregaVeic()));
                          },
                          child: Text('5')),
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
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                  ),
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
                                    builder: (context) => DesempenhoOficina()));
                          },
                          child: Text('6')),
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
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                  ),
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
                                    builder: (context) =>
                                        IndicadoresOficina()));
                          },
                          child: Text('7')),
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
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                  ),
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
                                    builder: (context) => EficienciaSm()));
                          },
                          child: Text('8')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            const Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text('Legendas do Sistema de Medidas',
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ),
            ),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 20,
                  width: 20,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  NPS CSI',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.cyan[600],
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  ENTREGA VEÍCULO',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.green,
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  AGE RECEPÇÃO',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.green[800],
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  DESEMPENHO OFIC MEC',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.orange,
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  PEÇAS',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.teal,
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  INDICADORES OFICINA',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.purple,
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  REP.MANUTENÇÃO',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    color: Colors.indigo,
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          '  INDICADORES EFICIÊNCIA',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 40,
                    color: Colors.white,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 10,
                  width: 10,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 25,
                      width: 5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Menu1()));
                        },
                        child: Text('Voltar',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 25,
                      width: 5,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {}, // falta direcionar para tela xpto
                        child: Text('Salvar',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 25,
                      width: 5,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PainelControleMedidas()));
                        },
                        child: Text('Seguir',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: 25,
                      width: 5,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      child: FittedBox(
                        alignment: Alignment.bottomLeft,
                        fit: BoxFit.contain,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-1mIKnEWkQM6jFbVPitHANTOlzSNquTvo1AXqfMgF4K7tfbCH5QkCgqBiN-wF9bx75w&usqp=CAU'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
