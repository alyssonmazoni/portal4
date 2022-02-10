import 'package:flutter/material.dart';
import 'package:rizzi/interface/Menu1.dart';
import 'package:rizzi/interface/cadastro_simplesoap.dart';

// teste

/// Provides a UI to select a authentication type page
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
                width: 1,
                color: Colors.grey[870],
              ),
            ),
            Expanded(
              flex: 0,
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.centerLeft,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-1mIKnEWkQM6jFbVPitHANTOlzSNquTvo1AXqfMgF4K7tfbCH5QkCgqBiN-wF9bx75w&usqp=CAU'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 1,
                width: 1,
                color: Colors.grey[870],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CadastroSimplesoap()));
              },
              child: const Text('Primeiro Acesso',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 1,
                width: 1,
                color: Colors.grey[870],
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menu1()));
              },
              child: const Text('Menu',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
            Expanded(
              flex: 0,
              child: Container(
                height: 1,
                width: 1,
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
              child: Column(
                  children: [
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 390,
                                  height: 1,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 390,
                                  height: 1,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          SizedBox(
                            height: 300,
                            width: 300,
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.network(
                                    'https://www.istoedinheiro.com.br/wp-content/uploads/sites/17/2019/10/imagemn-escolhida-artigo-e1571255765939-1280x720.jpg',
                                    colorBlendMode: BlendMode.modulate)),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 390,
                                  height: 1,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 390,
                                  height: 1,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 390,
                                  height: 40,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 150,
                                  height: 5,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Flexible(
                              child: Container(
                            color: Colors.grey[870],
                            child: Text(
                                'Com a telemetria Rizzi tenha um controle total da sua frota através de dispositivos móveis que monitoram todas as informações relevantes para ter uma gestão completa e mais eficiente de seus veículos. Seja no controle de combustíveis, no controle de itens de desgastes, no tempo de viagem, na velocidade do veículo, tempo total de entrega/rota ou trecho, acelerações bruscas, infrações fique no controle total a qualquer momento.'),
                          )),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 390,
                                  height: 2,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 300,
                                  height: 1,
                                  color: Colors.grey[870]))
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          Center(
                              child: Container(
                                  width: 390,
                                  height: 20,
                                  color: Colors.grey[870])),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center),
                    Row(
                        children: [
                          ConstrainedBox(
                              constraints: BoxConstraints(minHeight: 1),
                              child: Text(
                                'Rizzi Consulting ® 2000│2022 - Todos Direitos Reservados.',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey[870]),
                                textAlign: TextAlign.center,
                              )),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end),


                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            )));
  }
}
