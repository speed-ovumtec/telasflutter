import 'package:flutter/material.dart';

import 'DetailPage.dart';
import 'Lesson.dart';

class Cards extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
          fontFamily: 'Raleway'),
      home: ListPage(title: 'Card Teste'),
      // home: DetailPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  //Titulo do app
  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  //criação da lista
  List lessons;

  @override
  void initState() {
    //nossa lista recebe os dados
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),

      /**********************************************
       * container que vai abrigar o card o icone
       *********************************************/
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(lesson.icon, color: Colors.white,),
      ),//fim

      /*****************
       * Titulo do card
       ****************/
      title: Text(
        lesson.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      /**************************************
      * Barra de conclusão e titulo da barra
      **************************************/
      subtitle: Row(
        children: <Widget>[
          //expanded para abrigar a barra
          Expanded(
              flex: 1,
              child: Container(
                // barra
                child: LinearProgressIndicator(
                    //cor de fundo
                    backgroundColor: Color.fromRGBO(99, 224, 224, 0.2),
                    value: lesson.indicatorValue,
                    //cor da barra
                    valueColor: AlwaysStoppedAnimation(Colors.green)),
              )
          ),
          //expanded para abrigar o titulo
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                //texto de titulo
                child: Text(lesson.level,
                    style: TextStyle(color: Colors.white)
                )
            ),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(lesson: lesson)));
      },
    );

    Card makeCard(Lesson lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(lesson),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.hotel, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}

//metodo que retorna nossos objetos lições
List getLessons() {
  return [
    Lesson(
        title: "Curso de TI",
        level: "Iniciante",
        indicatorValue: 0.33,
        price: 20,
        content:
        "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.",
        icon: Icons.local_dining,
    ),
    Lesson(
        title: "Curso de Literatura",
        level: "Iniciante",
        indicatorValue: 0.33,
        price: 50,
        content:
        "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.",
        icon: Icons.book,
    ),
    Lesson(
        title: "Curso de Culinaria",
        level: "Intermediario",
        indicatorValue: 0.66,
        price: 30,
        content:
        "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.",
        icon: Icons.local_dining,
        ),
    Lesson(
        title: "Curso de Mecânica",
        level: "Intermediario",
        indicatorValue: 0.66,
        price: 30,
        content:
        "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.",
        icon: Icons.vpn_key ,
        ),
  ];
}