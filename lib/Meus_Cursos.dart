import 'package:flutter/material.dart';
import 'package:pro_professor/Certificado.dart';

class Meus_Cursos extends StatefulWidget {
  @override
  _Meus_CursosState createState() => _Meus_CursosState();
}

class _Meus_CursosState extends State<Meus_Cursos> {
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
                    'CURSO HISTÓRIA DO BRASIL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'Data da matricula 20/05/2019 hr:14:01.\n' +
                        'Matricula:2019-2FDB-0998\n' +
                        'Carga horaria: não definida',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: Column(
                    children: <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            color: Color(0xff850404),
                            child: const Text(
                              'ESTUDAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {

                            },
                          ),
                          FlatButton(
                            child: const Text(
                              'CERTIFICADO',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            color: Color(0xff850404),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Certifcado()
                                  )
                              );
                            },
                          ),
                        ],
                      ),
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
                    'CURSO FILOSOFIA PARA IDOSOS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'Data da matricula 20/05/2019 hr:14:01.\n' +
                        'Matricula:2019-3C54-99D5\n' +
                        'Carga horaria: não definida',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: Column(
                    children: <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            color: Color(0xff850404),
                            child: const Text(
                              'ESTUDAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {/* ... */},
                          ),
                          FlatButton(
                            child: const Text(
                              'CERTIFICADO',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            color: Color(0xff850404),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
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
                    'CURSO INCENTIVAR CRIANÇAS A LER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'Data da matricula 20/05/2019 hr:14:00.\n' +
                        'Matricula:2019-2CHD-093D\n' +
                        'Carga horaria: não definida',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: Column(
                    children: <Widget>[
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            color: Color(0xff850404),
                            child: const Text(
                              'ESTUDAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {/* ... */},
                          ),
                          FlatButton(
                            child: const Text(
                              'CERTIFICADO',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            color: Color(0xff850404),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
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