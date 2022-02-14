import 'package:flutter/material.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'package:rizzi/interface/Cadastro_Conta.dart';

import 'dart:async';
import 'dart:convert';

class SystemHome extends StatefulWidget {
  _SystemHome createState() => _SystemHome();
}


class _SystemHome extends State<SystemHome> {
  bool _initialized = false;
  bool _error = false;

  void pushPageFromHome(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SystemHome()));
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                height: 1,
                width: 10,
                color: Colors.grey[870],
              ),
            ),

            /// Falta fazer a pasta local para colocar a imagem.
            Expanded(
              flex: 0,
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.center,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-1mIKnEWkQM6jFbVPitHANTOlzSNquTvo1AXqfMgF4K7tfbCH5QkCgqBiN-wF9bx75w&usqp=CAU'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 1,
                width: 10,
                color: Colors.grey[870],
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 10),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CadastroConta()));
              },

              /// Acesso direciona para a tela: Cadastro_Conta
              child: const Text('Acesso',
                  style: TextStyle(fontSize: 12, color: Colors.green)),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 1,
                width: 10,
                color: Colors.grey[870],
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 10),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menu1()));
              },

              /// Menu direciona para a tela: responsive1

              child: const Text('Menu',
                  style: TextStyle(fontSize: 12, color: Colors.green)),
            ),
            const SizedBox(
              height: 10,
              width: 5,
            ),
            Expanded(
              flex: 0,
              child: Container(
                height: 1,
                width: 10,
                color: Colors.grey[870],
              ),
            ),
          ],
        ),

        //appBar: AppBar(
        // title: Text('Home')),
        body: Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 300,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.network(
                            'https://www.istoedinheiro.com.br/wp-content/uploads/sites/17/2019/10/imagemn-escolhida-artigo-e1571255765939-1280x720.jpg',
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Center(
                      child: Container(
                          width: 300, height: 20, color: Colors.grey[870])),
                ], crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Flexible(
                    child: Container(
                      child: Text(
                          'Com a telemetria Rizzi tenha um controle total da sua frota através de dispositivos móveis que monitoram todas as informações relevantes para ter uma gestão completa e mais eficiente de seus veículos. Seja no controle de combustíveis, no controle de itens de desgastes, no tempo de viagem, na velocidade do veículo, tempo total de entrega/rota ou trecho, acelerações bruscas, infrações fique no controle total a qualquer momento.',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ),
                  ),
                ], crossAxisAlignment: CrossAxisAlignment.center),
                Row(children: [
                  Center(
                      child: Container(
                          width: 300, height: 20, color: Colors.grey[870])),
                ], crossAxisAlignment: CrossAxisAlignment.center),
                Row(
                  children: [
                    Container(
                        child: Align(
                      alignment: Alignment.center,
                      child: Text(
                          'Rizzi Consulting ® 2000│2022 - Todos Direitos Reservados.',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ], crossAxisAlignment: CrossAxisAlignment.start),
            )));
  }
}
