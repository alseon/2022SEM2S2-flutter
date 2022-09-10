import 'package:calculadora/models/button.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttonrows(List<ButtonModel> lista){
  List<Widget> listabotones = [];
  lista.forEach((element){
    listabotones.add(
      ElevatedButton(
        onPressed: element.metodo,
        child:Text(element.title)
        ));
  });
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: listabotones);
}