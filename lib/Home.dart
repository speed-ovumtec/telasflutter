import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_professor/Inicio.dart';
import 'package:pro_professor/Meus_Cursos.dart';
import 'package:pro_professor/Noticias.dart';
import 'package:pro_professor/Perfil.dart';

import 'CalapseItemTeste.dart';
import 'Cursos.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PróProfessor'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  
                }
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: 'INICIO', icon: Icon(Icons.home)),
              Tab(text: 'CURSOS', icon: Icon(Icons.school)),
              Tab(text: 'MEUS CURSOS', icon: Icon(Icons.import_contacts)),
              Tab(text: 'NOTICIAS', icon: Icon(Icons.fiber_new)),
              Tab(text: 'PERFIL', icon: Icon(Icons.person)),
              Tab(text: 'SOBRE', icon: Icon(Icons.info))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Inicio(),
            Cursos(),
            Meus_Cursos(),
            Noticias(),
            Perfil(),
            MyApp(),
          ],
        ),
      ),
    );
  }
}
