import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lesson {
  String title;
  String level;
  double indicatorValue;
  int price;
  String content;
  IconData icon;

  Lesson(
      {this.title, this.level, this.indicatorValue,
        this.price, this.content, this.icon});
}