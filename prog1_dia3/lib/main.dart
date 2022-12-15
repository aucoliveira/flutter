import 'package:flutter/material.dart';

void main() {
  runApp(
    meuapp(),
  );
}

class meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Teste de conceito"),
        ), // faixa azul
        drawer: Drawer(
          child: menu(),
        ), // menu

        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            children: [
              Text("Oi pessoal"),
            ],
          ),
        ),
      ),
    );
  }
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(),
        Text("Desenvolvido por:"),
        Text("Augusto Cesar"),
        Icon(
          Icons.copyright,
        ),
      ],
    );
  }
}
