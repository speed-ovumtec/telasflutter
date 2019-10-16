import 'package:flutter/material.dart';

import 'Cards.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      accentColor: Colors.white,
      primaryColor: Colors.red,
    ),
    home: Cards(),
  ));
}