import 'package:calculadora/models/button.model.dart';
import 'package:calculadora/widgets/buttonrows.widget.dart';
import 'package:flutter/material.dart';

import 'dart:math';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String textresultados = "";
  late String auxtextresultados = "";
  String operador = "";
  List<String> historico = [".",".",".","."];
  List<String> ahistorico = ["operacion1","operacion2","operacion3","operacion4"];
  bool enpantalla = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora"),),
      body: Column(
       children: [
        Expanded(
          flex: 2,
          child: Container(
            //height: 100,
            color: Color.fromARGB(255, 56, 57, 58),
            child: Row(
              children: [
                Column(
                  children: [
                  Text( ahistorico[0], style: TextStyle(
                    color: Colors.white,
                    fontSize: 30),),
                  Text( ahistorico[1], style: TextStyle(
                    color: Colors.white,
                    fontSize: 30)),
                  Text( ahistorico[2], style: TextStyle(
                    color: Colors.white,
                    fontSize: 30)),
                  Text( ahistorico[3], style: TextStyle(
                    color: Colors.white,
                    fontSize: 30))
                  ])
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          color: Color.fromARGB(137, 7, 6, 6),
          child: Row(
            children: [
              Text( textresultados, style: TextStyle(
                    color: Colors.white,
                    fontSize: 20)),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 100,
            color: Color.fromARGB(255, 32, 32, 32),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                buttonrows([
                  ButtonModel(title: "7", metodo: (){ 
                    setState((){
                      textresultados+="7";
                      });
                  }),
                  ButtonModel(title: "8", metodo: (){ 
                    setState((){
                      textresultados+="8";
                      });
                  }),
                  ButtonModel(title: "9", metodo: (){ 
                    setState((){
                      textresultados+="9";
                      });
                  }),
                  ButtonModel(title: "/", metodo: (){ 
                    setState((){
                      textresultados+="/";
                      });
                  }),
                  ButtonModel(title: "<--", metodo: (){ 
                    setState((){
                      textresultados = textresultados.substring(0, textresultados.length - 1);
                      });
                  }),
                  ButtonModel(title: "C", metodo: (){ 
                    setState((){
                      textresultados="";
                      ahistorico = [""];
                      historico=[""];
                      });
                  }),
                ]),
                buttonrows([
                  ButtonModel(title: "4", metodo: (){ 
                    setState((){
                      textresultados+="4";
                      });
                  }),
                  ButtonModel(title: "5", metodo: (){ 
                    setState((){
                      textresultados+="5";
                      });
                  }),
                  ButtonModel(title: "6", metodo: (){ 
                    setState((){
                      textresultados+="6";
                      });
                  }),
                  ButtonModel(title: "*", metodo: (){ 
                    setState((){
                      textresultados+="*";
                      });
                  }),
                  ButtonModel(title: "(", metodo: (){ 
                    setState((){
                      textresultados+="(";
                      });
                  }),
                  ButtonModel(title: ")", metodo: (){ 
                    setState((){
                      textresultados+=")";
                      });
                  }),
                ]),
                buttonrows([
                  ButtonModel(title: "1", metodo: (){ 
                    setState((){
                      textresultados+="1";
                      });
                }),
                  ButtonModel(title: "2", metodo: (){
                     setState((){
                      textresultados+="2";
                      });
                }),
                  ButtonModel(title: "3", metodo: (){
                    setState((){
                      textresultados+="3";
                      });
                  }),
                  ButtonModel(title: "-", metodo: (){ 
                    setState((){
                      textresultados+="-";
                      });
                  }),
                  ButtonModel(title: "x²", metodo: (){ 
                    setState((){
                      textresultados+="x²";
                      });
                  }),
                  ButtonModel(title: "√", metodo: (){ setState((){
                      textresultados+="√";
                      });
                  }),
                ]),
                buttonrows([
                  ButtonModel(title: "0", metodo: (){ 
                    setState((){
                      textresultados+="0";
                      });
                  }),
                  ButtonModel(title: ",", metodo: (){ 
                    setState((){
                      textresultados+=",";
                      });
                  }),
                  ButtonModel(title: "%", metodo: (){ 
                    setState((){
                      textresultados+="%";
                      });
                  }),
                  ButtonModel(title: "+", metodo: (){ 
                    setState((){
                      textresultados+="+";
                      });
                  }),
                  ButtonModel(title: "=", metodo: (){
                    setState((){
                      textresultados+="=";
                      try{
                          Parser p = new Parser();
                          ContextModel cm = new ContextModel();
                          Expression exp = p.parse(textresultados);
                          setState(() {
                            textresultados = exp.evaluate(EvaluationType.REAL, cm).toString();
                            auxtextresultados = auxtextresultados+" = "+exp.evaluate(EvaluationType.REAL, cm).toString();
                          });
                          historico.add(auxtextresultados);
                          print("Resultado: $textresultados");
                        }catch (error){
                          textresultados = "ERROR";
                        }
                      });
                  }),
                ]),
            ],
            )
          ),
        )
       ]
      ),
      );
  }
}