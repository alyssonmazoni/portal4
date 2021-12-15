import 'package:flutter/material.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/rizzi_gps.dart';
import 'package:rizzi/interface/rizzi_pecas.dart';
import 'package:rizzi/interface/rizzi_rh.dart';
import 'package:rizzi/interface/rizzi_status.dart';
import 'package:rizzi/interface/tela_menu.dart';

/// Provides a UI to select a authentication type page

class ModuloRizzi extends StatefulWidget {
  _ModuloRizzi createState() => _ModuloRizzi();
}

class _ModuloRizzi extends State<ModuloRizzi> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Modulo Rizzi')),
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
                    height: 5,
                    width: 5,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                SizedBox(
                  width: 320,
                  height: 100,
                  child: FittedBox(
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2014/06/11/08/26/water-366586__340.jpg'),
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
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
              const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Painel de Configurações Rizzi',
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
                                      builder: (context) => RizziPecas()));
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
                                      builder: (context) => RizziRh()));
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
                                      builder: (context) => RizziStatus()));
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
                                      builder: (context) => RizziGps()));
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
                        '  PEÇAS',
                        style: TextStyle(fontSize: 10),
                      ),
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
                        '  RH',
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
                        '  STATUS SISTEMA',
                        style: TextStyle(fontSize: 10),
                      ),
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
                        '  GEO LOCALIZAÇÃO',
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ], mainAxisAlignment: MainAxisAlignment.center),
          ),
        ));
  }
}
