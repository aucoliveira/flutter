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
      home: pagina3(),
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
      drawer: Drawer(child: menu()),
      body: Container(
        child: conteudoPagina1(),
      ),
    );
  }
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FlutterLogo(),
      Text("Desenvolvido por"),
      Text("Augusto CEsar"),
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
    ]);
  }
}

class conteudoPagina1 extends StatefulWidget {
  const conteudoPagina1({super.key});

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
        Container(height: 200, width: 200, color: cor2),
        Padding(padding: EdgeInsets.all(20)),
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
              setState(() {});
            }),
      ],
    ));
  }
}

class pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Pagina 2"),
            Icon(
              Icons.arrow_forward,
            ),
          ],
        ),
        backgroundColor: Colors.brown,
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
  const conteudoPagina2({super.key});

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
        Text("$num",
            style: TextStyle(
              fontSize: tamanho,
            )),
      ],
    ));
  }
}

class pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.back_hand,
            ),
            Text("Pagina 3"),
          ],
        ),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudoPagina3(),
      ),
    );
  }
}

class conteudoPagina3 extends StatefulWidget {
  const conteudoPagina3({super.key});

  @override
  State<conteudoPagina3> createState() => _conteudoPagina3State();
}

class _conteudoPagina3State extends State<conteudoPagina3> {
  double tamanho = 0;
  double tamanho2 = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: tamanho,
                onChanged: (value) {
                  tamanho = value;

                  print("$tamanho");
                  setState(() {});
                },
                min: 0,
                max: 100,
              ),
              Container(
                height: tamanho,
                width: tamanho,
                color: Colors.yellow,
                child: Text("$tamanho"),
              ),
            ],
          ),
          Text("___________________________"),
          //Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: tamanho2,
                onChanged: (value) {
                  tamanho2 = value;

                  print("$tamanho2");
                  setState(() {});
                },
                min: 0,
                max: 100,
              ),
              //Padding(padding: EdgeInsets.all(10)),
              Container(
                height: tamanho2,
                width: tamanho2,
                color: Colors.green,
                child: Text("$tamanho2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
