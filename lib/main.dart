import 'package:flutter/material.dart';
import 'package:first_app/gradient_conteiner.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ConteinerGradient(
            Color.fromARGB(255, 58, 18, 82), Color.fromARGB(230, 57, 2, 158)),
      ),
    ),
  );
}
