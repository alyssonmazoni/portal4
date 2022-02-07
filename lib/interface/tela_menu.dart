import 'package:flutter/material.dart';
import 'package:rizzi/interface/home.dart';
import 'package:rizzi/interface/modulo_rizzi.dart';
import 'package:rizzi/interface/pos_venda.dart';

/// Provides a UI to select a authentication type page
class Telamenu extends StatefulWidget {
  _Telamenu createState() => _Telamenu();
}

class _Telamenu extends State<Telamenu> {
  DateTime dateForm = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('tela_menu')),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Row(
                        children: [
                          Container(
                            height: 60,
                            width: 300,
                            child: FittedBox(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-1mIKnEWkQM6jFbVPitHANTOlzSNquTvo1AXqfMgF4K7tfbCH5QkCgqBiN-wF9bx75w&usqp=CAU'),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Container(
                            height: 15,
                            width: 20,
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
                                          builder: (context) => posvenda()));
                                },
                                child: Text('Pós Vendas')),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            height: 20,
                            width: 150,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ModuloRizzi()));
                                },
                                child: Text('Modulo RIZZI')),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            height: 20,
                            width: 300,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SystemHome()));
                                },
                                child: Text('Sair')),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.all(8),
                              height: 350,
                              width: 300,
                              child: Container(
                                  child: Text(
                                'Copyright © 2000 - 2021 Desenvolvido por RizziConsulting',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            )));
  }
}
