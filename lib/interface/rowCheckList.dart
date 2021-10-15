import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';
import 'my_selection_item.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//import 'package:intl/intl.dart';

class RowCheckList extends StatefulWidget {
  final int? select;
  const RowCheckList({Key? key, this.select}) : super(key: key);

  @override
  _RowCheckList createState() => _RowCheckList();
}

class _RowCheckList extends State<RowCheckList> {

  late int select;

  List<String> etapas = [
    'Registro de agendamento',
    '',
    ''
  ];

  List<String> questoes = [
    'Cumprir todos os padrões determinados pelo StarClass no departamento de serviço',
    'Gerente de serviço',
    'Consultor de serviço'
  ];

  List<int> pesos = [3, 3, 3];

  final elements = [
    "",
    "S",
    "N",
  ];

  int selectedIndex1 = 0;

  List<Widget> _buildItems1() {
    return elements
        .map((val) => MySelectionItem(
      title: val,
    ))
        .toList();
  }

  TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    select = widget.select!;
    int peso = pesos[select];
    return Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              child: Text(etapas[select]),
            ),
          ),
          Expanded(
            child: Text(
                questoes[select]),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: DirectSelect(
                  itemExtent: 55.0,
                  selectedIndex: selectedIndex1,
                  child: MySelectionItem(
                    isForList: false,
                    title: elements[selectedIndex1],
                  ),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedIndex1 = index!;
                    });
                  },
                  items: _buildItems1()),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              child: Text('$peso'),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center);
  }
}
