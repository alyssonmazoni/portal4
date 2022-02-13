import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'package:rizzi/interface/Home.dart';

/// Provides a UI to select a authentication type page
class GerarSenha extends StatefulWidget {
  _Gerarsenha createState() => _Gerarsenha();
}

class _Gerarsenha extends State<GerarSenha> {
  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Gerar Senha')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(15),
          alignment: Alignment.center,
          child: SingleChildScrollView(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [],
                ),
              ],
            ),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Criar acesso',
                      style: TextStyle(fontSize: 20, color: Colors.redAccent)),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.start),
            Row(
                children: [
                  Expanded(
                    child: Text('Nome de usuário ou e-mail*'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 20,
                      child: TextField(
                          controller: tc1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Text('Senha*'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      margin: const EdgeInsets.all(8),
                      height: 20,
                      width: 20,
                      child: TextField(
                          controller: tc2,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[870],
                  height: 5,
                  width: 5,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[870],
                  height: 40,
                  width: 10,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 10,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SystemHome()));
                          },
                          child: Text('ACESSO VISITANTE')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 10,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menu1()));
                          },
                          child: Text('Efetivar o Cadastro')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center),
            Row(children: [
              const SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SystemHome()));
                },
                child: const Text('Esqueci a senha',
                    style: TextStyle(fontSize: 20, color: Colors.redAccent)),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey[870],
                  height: 40,
                  width: 10,
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
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
            Row(children: [
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 40,
                color: Colors.grey[850],
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                      'Copyright © 2000 - 2021 Desenvolvido por RizziConsulting'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
            Row(children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Copyright © 2021 for JB'),
                ),
              ),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
        ));
  }
}
