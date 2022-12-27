import 'package:flutter/material.dart';

void main() {
  runApp(
    meuApp(),
  );
}

class meuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: pagina1(),
      home: pagina2(),
    );
  }
}

class pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Pagina 1"),
            Icon(
              Icons.arrow_forward,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudoPagina1(),
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
        Text("Bruno Rodrigues"),
        Icon(
          Icons.copyright,
        ),
        TextButton(
          onPressed: () {},
          child: Text("Pagina 1"),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Pagina 2"),
        ),
      ],
    );
  }
}

class conteudoPagina1 extends StatefulWidget {
  @override
  State<conteudoPagina1> createState() => _conteudoPagina1State();
}

class _conteudoPagina1State extends State<conteudoPagina1> {
  bool chave = false;
  Color cor1 = Colors.green;
  Color cor2 = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: cor1,
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 200,
            width: 200,
            color: cor2,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Switch(
              value: chave,
              onChanged: (value) {
                chave = value;
                print("$chave");
                if (chave) {
                  cor1 = Colors.brown;
                  cor2 = Colors.purple;
                } else {
                  cor1 = Colors.green;
                  cor2 = Colors.yellow;
                }
                setState(
                  () {},
                );
              }),
        ],
      ),
    );
  }
}

class pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
            ),
            Text("Pagina 2")
          ],
        ),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudoPagina2(),
      ),
    );
  }
}

class conteudoPagina2 extends StatefulWidget {
  @override
  State<conteudoPagina2> createState() => _conteudoPagina2State();
}

class _conteudoPagina2State extends State<conteudoPagina2> {
  double tamanho = 0;
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Slider(
            value: tamanho,
            onChanged: (value) {
              tamanho = value;
              num = tamanho.toInt();
              print("$tamanho");
              setState(() {});
            },
            min: 0,
            max: 100,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "$num",
            style: TextStyle(
              fontSize: tamanho,
            ),
          ),
        ],
      ),
    );
  }
}
