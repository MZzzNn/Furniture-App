import 'package:flutter/material.dart';

List<Map<String, dynamic>> cats = [
  {'title': 'Chairs', 'isSelected': true},
  {'title': 'Sofa', 'isSelected': false},
  {'title': 'Tables', 'isSelected': false},
];
int currentCat = 0;

Widget catCard({int index,BuildContext context}) {
  return Container(
    height: 40,
    margin: EdgeInsets.symmetric(horizontal: 6),
    width: 95,
    decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 1),
        borderRadius: BorderRadius.circular(25),
        color: cats[index]['isSelected'] ? Theme.of(context).primaryColor : Colors.white),
    child: Center(
      child: Text(
        cats[index]['title'],
        style: TextStyle(
            color: cats[index]['isSelected'] ? Colors.white : Theme.of(context).primaryColor),
      ),
    ),
  );
}
