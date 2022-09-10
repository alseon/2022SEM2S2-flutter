import 'package:calculadora/models/button.model.dart';
import 'package:calculadora/widgets/buttonrows.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String textresultados = "";
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
            color: Colors.purpleAccent,
            child: Row(
              children: [
                Text( "Operaciones"),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          color: Colors.black54,
          child: Row(
            children: [
              Text( textresultados),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 100,
            color: Colors.white,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                buttonrows([
                  ButtonModel(title: "%", metodo: (){ 
                    setState((){
                      textresultados+="%";
                      });
                  }),
                  ButtonModel(title: "CE", metodo: (){ 
                    setState((){
                      textresultados+="ce";
                      });
                  }),
                  ButtonModel(title: "C", metodo: (){ 
                    setState((){
                      textresultados="";
                      });
                  }),
                  ButtonModel(title: "<--", metodo: (){ 
                    setState((){
                      textresultados+="borrar";
                      });
                  }),
                ]),
                buttonrows([
                  ButtonModel(title: "1/x", metodo: (){ 
                    setState((){
                      textresultados+="1/x";
                      });
                  }),
                  ButtonModel(title: "pow", metodo: (){ 
                    setState((){
                      textresultados+="**";
                      });
                  }),
                  ButtonModel(title: "sqrt", metodo: (){ setState((){
                      textresultados+="sqrt";
                      });
                  }),
                  ButtonModel(title: "/", metodo: (){ 
                    setState((){
                      textresultados+="/";
                      });
                  }),
                ]),
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
                  ButtonModel(title: "*", metodo: (){ 
                    setState((){
                      textresultados+="*";
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
                  ButtonModel(title: "-", metodo: (){ 
                    setState((){
                      textresultados+="-";
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
                  ButtonModel(title: "+", metodo: (){ 
                    setState((){
                      textresultados+="+";
                      });
                  }),
                ]),
                buttonrows([
                  ButtonModel(title: "+/-", metodo: (){ 
                    setState((){
                      textresultados+="+/-";
                      });
                  }),
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
                  ButtonModel(title: "=", metodo: (){
                    setState((){
                      textresultados+="=";
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