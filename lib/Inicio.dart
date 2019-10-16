import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: SizedBox(
              width: 300.0,
              /*child: FlatButton.icon(
                      color: Colors.red,
                      onPressed: (){},
                      icon: Icon(Icons.description),
                      label: Text(
                          "Certificado",
                      ),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),*/
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                color: Colors.red,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                onPressed: () {},
                child: Row(
                  // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.group_add),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text(
                        "INDIQUE E GANHE CRÉDITOS",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: SizedBox(
              width: 300.0,
              /*child: FlatButton.icon(
                      color: Colors.red,
                      onPressed: (){},
                      icon: Icon(Icons.description),
                      label: Text(
                          "Certificado",
                      ),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),*/
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                color: Colors.red,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                onPressed: () {},
                child: Row(
                  // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.attach_money),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text(" "),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text(
                        "COMPRE CRÉDITOS",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: SizedBox(
              width: 300.0,
              /*child: FlatButton.icon(
                      color: Colors.red,
                      onPressed: (){},
                      icon: Icon(Icons.description),
                      label: Text(
                          "Certificado",
                      ),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),*/
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                color: Colors.red,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                onPressed: () {},
                child: Row(
                  // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.share),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text(" "),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text(
                        "COMPARTILHAR",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: _buildList(),
          ),
        ],
      ),
    );
  }
}

Widget _buildList() => ListView(
      children: [
        _tile(Icons.people, 'EDUCAÇÃO INFANTIL'),
        _tile(Icons.people, 'ENSINO FUNDAMENTAL'),
        _tile(Icons.people, 'ENSINO MÉDIO'),
        _tile(Icons.people, 'EDUCAÇÃO A DISTANCIA'),
        _tile(Icons.people, 'EAC'),
        _tile(Icons.people, 'EDUCAÇÃO MILITAR'),
        Divider(),
        _tile(Icons.people, 'PRÉ ENEM'),
        _tile(Icons.people, 'CURSINHO'),
        _tile(Icons.people, 'EDUCAÇÃO INFANTIL'),
        _tile(Icons.people, 'EDUCAÇÃO INFANTIL'),
      ],
    );

ListTile _tile(IconData icon, String titulo) => ListTile(
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
      title: Text(titulo,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
    );
