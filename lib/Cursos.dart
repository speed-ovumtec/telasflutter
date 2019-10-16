import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Cursos extends StatefulWidget {
  @override
  _CursosState createState() => _CursosState();
}

class _CursosState extends State<Cursos> {
  String _msg = "Orientações:\n" +
      "1º - Digite o nome do curso no campo de busca\n" +
      "2º - Seja bem especifico no nome do curso\n" +
      "3º - Use o filtro para especificar o tipo de contéudo desejado\n" +
      "4º - Clique no botão de buscar\n" +
      "5º - Clique no botão de selecionar\n" +
      "6º - Ou clique no título do conteúdo para pré-visualizar o mesmo\n" +
      "7º - Clique no botão 'matricular'";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration:
                      InputDecoration(hintText: "Digite o nome do curso"),
                    ),
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      width: 40,
                      height: 40,
                      child: FloatingActionButton(
                          child: Icon(Icons.search), onPressed: () {})),
                  flex: 1,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CheckboxGroup(
                      orientation: GroupedButtonsOrientation.HORIZONTAL,
                      padding: EdgeInsets.fromLTRB(32, 0, 16, 0),
                      labels: <String>[
                        "Vídeos",
                      ],
                      onChange: (bool isChecked, String label, int index) {

                      },
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: CheckboxGroup(
                      orientation: GroupedButtonsOrientation.HORIZONTAL,
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      labels: <String>[
                        "Textos",
                      ],
                      onChange: (bool isChecked, String label, int index) {

                      },
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: CheckboxGroup(
                      orientation: GroupedButtonsOrientation.HORIZONTAL,
                      padding: EdgeInsets.fromLTRB(16, 0, 32, 0),
                      labels: <String>[
                        "Livros"
                      ],
                      onChange: (bool isChecked, String label, int index) {

                      },
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                _msg,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}