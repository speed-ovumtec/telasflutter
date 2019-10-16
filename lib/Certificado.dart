import 'package:flutter/material.dart';

class Certifcado extends StatefulWidget {
  @override
  _CertifcadoState createState() => _CertifcadoState();
}

class _CertifcadoState extends State<Certifcado> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("PróProfessor"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text("Curso História do Brasil", style: TextStyle(fontSize: 18),),),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
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
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        onPressed: (){
                          
                        }, 
                        child: Row( // Replace with a Row for horizontal icon + text
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                Expanded(
                                  child:Icon(Icons.description),
                                  flex: 1,
                                ),
                              Expanded(
                                child:Text(" "),
                                flex: 1,
                              ),
                                Expanded(
                                  child: Text("Certificado",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                  ),),
                                  flex: 3,
                                ),
                            ],
                    ),
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          contentPadding: EdgeInsets.fromLTRB(36, 16, 0, 0),
                          title: Text(
                            'DISCIPLINA: HISTÓRIA DO BRASIL\N'
                            +'PROF. FRANCISCO GILSON BRASIL\N'
                            +'PRÉ...',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            'Francisco Gilson - História do Brasil-\n' +
                                'UniENEM/PIAP - 2017 terra fora erguida\n' +
                                'uma cruz com o brasão do rei, havendo depois',
                            style: TextStyle(color: Colors.black),
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
                            'DISCIPLINA: HISTÓRIA DO BRASIL\N'
                                +'PROF. FRANCISCO GILSON BRASIL\N'
                                +'PRÉ...',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            'Francisco Gilson - História do Brasil-\n' +
                                'UniENEM/PIAP - 2017 terra fora erguida\n' +
                                'uma cruz com o brasão do rei, havendo depois',
                            style: TextStyle(color: Colors.black),
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
                            'DISCIPLINA: HISTÓRIA DO BRASIL\N'
                                +'PROF. FRANCISCO GILSON BRASIL\N'
                                +'PRÉ...',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            'Francisco Gilson - História do Brasil-\n' +
                                'UniENEM/PIAP - 2017 terra fora erguida\n' +
                                'uma cruz com o brasão do rei, havendo depois',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],  
              ),
            ),
          ],
        ),
      ),
    );
  }
}
