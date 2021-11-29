import 'package:flutter/material.dart';
import 'package:rizzi/interface/age_recep.dart';
import 'package:rizzi/interface/desempenho_oficina.dart';
import 'package:rizzi/interface/eficiencia_sm.dart';
import 'package:rizzi/interface/entrega_veic.dart';
import 'package:rizzi/interface/indicadores_oficina.dart';
import 'package:rizzi/interface/modulo_sistemamedidas.dart';
import 'package:rizzi/interface/nps_csi.dart';
import 'package:rizzi/interface/pecas_medidas.dart';
import 'package:rizzi/interface/rep_manutencao.dart';


/// Provides a UI to select a authentication type page
class PainelControlemedidas extends StatefulWidget {


  _PainelControlemedidas createState() => _PainelControlemedidas();
}

class _PainelControlemedidas extends State<PainelControlemedidas> {
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
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
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
                                          DesempenhoOficina()));
                            },
                            child: Text('6')),
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
                                      builder: (context) =>
                                          IndicadoresOficina()));
                            },
                            child: Text('7')),
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
                                      builder: (context) => EficienciaSm()));
                            },
                            child: Text('8')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Legendas'),
                ),
              ),
              Row(
                  children: [
                    Expanded(
                      child: Text('1 - NPS / CSI'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('2 - AGENDAMENTO / RECEPÇÃO'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('3 - PEÇAS'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('4 - REP.E MANUT.'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('5 - ENTREGA DO VEÍCULO'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('6 - DESEMPENHO OFICINA MECÂNICA'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('7 - INDICADORES DA OFICINA'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('8 - INDICADORES DA EFICIÊNCIA'),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
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
                                          ModuloSistemamedidas()));
                            },
                            child: Text('Voltar')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ),
        ));
  }
}
