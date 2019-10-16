import 'package:flutter/material.dart';
/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyStatefulWidget(),
    );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    this.titlePainel,
    this.bodyText,
    this.isExpanded = false,
    this.icon,
  });

  String titlePainel;
  String bodyText;
  bool isExpanded;
  Icon icon;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      titlePainel: 'Panel $index',
      bodyText: 'This is item number $index',
    );
  });
}
List<Item> testeLista = <Item>[
  Item(
    titlePainel: "O app",
    bodyText: "teste teste",
    isExpanded: false,
    icon: Icon(Icons.hotel),
  ),
];

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<Item> _data = testeLista;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.bodyText),
            );
          },
          body: ListTile(
              title: Text(item.titlePainel),
              subtitle: Text('huehue'),
              trailing: Icon(Icons.info),
              onTap: () {
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
/*
import 'package:flutter/material.dart';

class ExpansionTileSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      ),
    );
  }
}

// Display do multinivel. Se a entrada tiver um filho com expansão
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

// Class contrutora do multinivel
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

//Minha lista Entradas expandidas que vão aparecer no app
final List<Entry> data = <Entry>[
  Entry(
    'O APLICATIVO É GRATUITO?',//TITULO
    <Entry>[
      Entry('SIM! VOCÊ PODE SE MATRICULAR EM QUANTOS CURSOS DESEJAR '
          'SEM PAGAR NADA.'),//SUB
    ],
  ),
  Entry(
    'POSSO EMITIR O CERTIFICADO?',//TITULO
    <Entry>[
      Entry('AINDA NÃO, MAS EM BREVE TEREMOS ESSE RECURSO.'),//SUB
    ],
  ),
  Entry(
    'COMO FUNCIONA OS CURSOS?',//title
    <Entry>[
      Entry('BASTA DIGITAR O NOME DO CURSO E DEPOIS'
          'SELECIONAR OS CONTEUDOS DESEJADOS E ESTUDAR.'),//sub1
    ],
  ),
  Entry(
    'QUANTO TEMPO DURA O CURSO?',//title
    <Entry>[
      Entry('VOCÊ DEFINE E FAZ O SEU CRONOGRAMA, NÃO'
          'TEMOS UM PRAZO DEFINIDO.'),//sub1
    ],
  ),
]
*/