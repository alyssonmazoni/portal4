import 'package:flutter/material.dart';

/// Provides a UI to select a authentication type page
class modulopecasoap extends StatefulWidget {
  _modulopecasoap createState() => _modulopecasoap();
}

class _modulopecasoap extends State<modulopecasoap> {
  DateTime dateForm = DateTime.now();

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Modulo Peças')),
        body: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Column(children: [
            Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 15,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => modulopecasoap()));
                          },
                          child: Text('Peças')),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
        ));
  }
}
