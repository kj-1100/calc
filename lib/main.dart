// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:calc/Calculadora.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MeuApp());

}


class MeuApp extends StatelessWidget{
  MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Calculadora Simples",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: const Calculadora(),
    );
  }

}
