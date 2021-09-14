
import 'package:flutter/material.dart';



/// Provides a UI to select a authentication type page
class SystemHome extends StatefulWidget {

  _SystemHome createState() => _SystemHome();

}

class _SystemHome extends State<SystemHome> {
  void pushPageFromHome() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Página Inicial',
            theme: ThemeData.dark(),
            home: Scaffold(
              appBar: AppBar(title: Text('Página Inicial')),
              body: Center(child:
                Column(children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: pushPageFromHome, child: Text('Vendas')),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: pushPageFromHome, child: Text('Pós-vendas'))
                  )

                ],
                mainAxisAlignment: MainAxisAlignment.center,
                ),

              )

            )
          );
  }
}