
import 'package:flutter/material.dart';

/// Provides a UI to select a authentication type page
class InputTextTest extends StatefulWidget {

  _InputTextTest createState() => _InputTextTest();

}

class _InputTextTest extends State<InputTextTest> {

  TextEditingController tc = TextEditingController();
  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text('Página Inicial')),
            body: Center(child:
            Column(children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('OS/Orçamento'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc2)
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Data'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc)
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Quantidade'),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(controller: tc1)
              )

            ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),

            )

        );
  }
}