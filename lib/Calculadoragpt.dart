// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  int num1 = 0;
  int num2 = 0;
  int resultado = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  void somar() {
    setState(() {
      num1 = int.tryParse(t1.text) ?? 0;
      num2 = int.tryParse(t2.text) ?? 0;
      resultado = num1 + num2;
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
                  color: const Color.fromARGB(255, 207, 47, 47),
                  onPressed: () {
                    somar();
                  },
                  child: const Text("+"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
