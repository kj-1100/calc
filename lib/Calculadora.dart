// ignore: duplicate_ignore
// ignore: file_names

// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  num num1 = 0;
  num num2 = 0;
  dynamic resultado = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  void somar() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 + num2;
    });
  }
  void subtrair() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text) ;
      resultado = num1 - num2;
    });
  }
 void dividir() {
  setState(() {
    num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = (num1 / num2).toStringAsFixed(2);
      });
}
   void multiplicar() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 * num2;
    });
  }
  void limpa() {
    setState(() {
      t1.text="";
      t2.text="";
      num1 = 0;
      num2 = 0;
      resultado = num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" :: Calculadora - Simples ::"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "resultado : $resultado",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Informe o primeiro valor"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Informe o segundo valor"),
              controller: t2,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blueAccent ,
                  onPressed: () {
                    somar();
                  },
                  child: const Text("+", 
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                  ),
                ),
                 MaterialButton(
                  color: Colors.blueAccent ,
                  onPressed: () {
                    subtrair();
                  },
                  child: const Text("-", 
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blueAccent ,
                  onPressed: () {
                    multiplicar();
                  },
                  child: const Text("X",
                        style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)
                  ),
                ),  
                MaterialButton(
                  color: Colors.blueAccent ,
                  onPressed: () {
                    dividir();
                  },
                  child: const Text("/", 
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                  ),
                )
              ],
            ),
            
            const Padding(padding: EdgeInsets.only(top: 90)),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                MaterialButton(
                  color: Colors.grey ,
                  onPressed: () {
                    limpa();
                  },
                  child: const Text("limpa", 
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45
                      )
                  ),
                )
              ],
            ) 
          ],
        ),
      ),
    );
  }
}
