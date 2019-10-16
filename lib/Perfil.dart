import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  List<String> _checked = ["A", "B"];
  String _picked = "M";
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Radios e fotos
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 26),
                  child: Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                ),
                Column(
                  children: <Widget>[
                    //BASIC RADIOBUTTONGROUP
                    Container(
                      padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                      child: Text(
                        "Gênero",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),

                    RadioButtonGroup(
                      activeColor: Colors.red,
                      orientation: GroupedButtonsOrientation.HORIZONTAL,
                      padding: EdgeInsets.only(left: 16),
                      labels: ["M", "F", "Outros"],
                      picked: _picked,
                      onChange: (String label, int index) =>
                          print("label: $label index: $index"),
                      onSelected: (String label) => print(label),
                    ),
                  ],
                )
              ],
            ), //fim de row com fotos

            //botão adquira créditos
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
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
                      //titulo do botão
                      child: Text(
                        "Adquira créditos",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      flex: 3,
                    ),
                    //icone botão
                    Expanded(
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),

            //-------------
            // nome
            //------------
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Container(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  "Nome",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Nome do fulano",
                ),
              ),
            ),

            //------------
            // email
            //--------------
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Container(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  "E-mail",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "fulano@gmail.com",
                ),
              ),
            ),

            //-------------
            // celular
            //----------------
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Container(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  "",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Celular",
                ),
              ),
            ),

            //------------------
            //cep
            //------------------
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Container(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  "CEP",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  hintText: "00000-000",
                ),
              ),
            ),

            //------------------
            // Rua e numero
            //------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //rua
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Container(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          "Endereço",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                      ),
                    ),
                    //rua
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Sou do benguola",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //numero
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Container(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          "Rua",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: SizedBox(
                        width: 90,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "71",
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            //------------------
            //complemento e bairro
            //------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //rua
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Container(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          "Complemento",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                      ),
                    ),
                    //rua
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Maria do facão",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //numero
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Container(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          "Bairro",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: SizedBox(
                        width: 90,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Bengui",
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            //------------------
            //Cidade e UF
            //------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //rua
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Container(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          "Cidade",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                      ),
                    ),
                    //rua
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Belém",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //numero
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Container(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          "UF",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: SizedBox(
                        width: 90,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "PA",
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            //------------------
            //BOTÃO SALVAR DADOS
            //------------------
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
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
                      child: Icon(
                        Icons.save,
                        color: Colors.white,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      //titulo do botão
                      child: Text(
                        "SALVAR DADOS",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
