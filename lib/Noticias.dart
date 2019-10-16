import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Noticias extends StatefulWidget {
  @override
  _NoticiasState createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(36, 16, 0, 0),
                  title: Text(
                    'PROMOÇÃO DE LANÇAMENTO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'APROVEITE O LANÇAMENTO DO CURSO DE DESIGN GRAFICO .\n' +
                        'ATÉ ESSA QUARTA-FEIRA(05/04/2019)\n' +
                        'O CURSO DE DESING GRAFICO TERÁ 10% DE DESCONTO',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, left: 8),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_up, color: Colors.white,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, right: 10, left: 10),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_down, color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(36, 16, 0, 0),
                  title: Text(
                    'AVISO DE MANUNTENÇÃO 04/03/2019 14:30',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'AVISAMOS QUE NESSA TERÇA-FEIRA ÀS 14:30.\n' +
                        'NOSSOS SERVIDORES ESTARÃO INDISPONIVEIS\n' +
                        'PEDIMOS DESCULPAS PELO TRANSTORNO',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, left: 8),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_up, color: Colors.white,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, right: 10, left: 10),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_down, color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(36, 16, 0, 0),
                  title: Text(
                    'PROMOÇÃO DE LANÇAMENTO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'APROVEITE O LANÇAMENTO DO CURSO DE DESIGN GRAFICO .\n' +
                        'ATÉ ESSA QUARTA-FEIRA(05/04/2019)\n' +
                        'O CURSO DE DESING GRAFICO TERÁ 10% DE DESCONTO',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, left: 8),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_up, color: Colors.white,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, right: 10, left: 10),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_down, color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  contentPadding: EdgeInsets.fromLTRB(36, 16, 0, 0),
                  title: Text(
                    'PROMOÇÃO DE LANÇAMENTO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'APROVEITE O LANÇAMENTO DO CURSO DE DESIGN GRAFICO .\n' +
                        'ATÉ ESSA QUARTA-FEIRA(05/04/2019)\n' +
                        'O CURSO DE DESING GRAFICO TERÁ 10% DE DESCONTO',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, left: 8),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_up, color: Colors.white,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8, right: 10, left: 10),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {},
                            child: Icon(Icons.thumb_down, color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
