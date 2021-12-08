import 'package:flutter/material.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/rizzi_gps.dart';
import 'package:rizzi/interface/rizzi_pecas.dart';
import 'package:rizzi/interface/rizzi_rh.dart';
import 'package:rizzi/interface/rizzi_status.dart';

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
                    height: 40,
                    width: 40,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              Row(children: [
                SizedBox(
                  width: 200,
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
                    height: 40,
                    width: 40,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Painel de Configurações',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
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
                        alignment: Alignment.centerLeft,
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
                    const Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Peças',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                    const Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('RH',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                    const Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Status Sistema',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
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
                    const Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Geo.Localização',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start),
              Row(children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[850],
                    height: 20,
                    width: 20,
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.start),
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
                                      builder: (context) => SystemHome()));
                            },
                            child: Text('Voltar')),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start),
            ], mainAxisAlignment: MainAxisAlignment.start),
          ),
        ));
  }
}
