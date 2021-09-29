
import 'package:flutter/material.dart';
import 'package:rizzi/interface/part_summary.dart';
import 'inputTextTest.dart';
import 'part_summary.dart';


/// Provides a UI to select a authentication type page
class SystemHome extends StatefulWidget {

  _SystemHome createState() => _SystemHome();

}

class _SystemHome extends State<SystemHome> {
  void pushPageFromHome(BuildContext context) {

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PartSummary()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(title: Text('Página Inicial')),
              body: Center(child:
                Column(children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context) => InputTextTest()));},
                        child: Text('Vendas')),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: (){pushPageFromHome(context);},
                        child: Text('Pós-vendas'))
                  )

                ],
                mainAxisAlignment: MainAxisAlignment.center,
                ),

              )

            );

  }
}