import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderCheckList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text('Data'),
              ),
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    child: Text(DateFormat('dd-MM-yyyy').format(DateTime.now()))),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Total preenchido:'),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('50%'),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.center),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text('Conta:'),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 30,
                width: 5,
                child: Text('               '),
              ),
            ),
            Expanded(
              child: Text('Concessionário:'),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 30,
                width: 40,
                child: Text('                '),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text('Coordenador OAP:'),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 30,
                width: 5,
                child: Text('             '),
              ),
            ),
            Expanded(
              child: Text('Autor:'),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 30,
                width: 5,
                child: Text('          '),
              ),
            ),
          ],
        ),
      ],
    );
  }


}