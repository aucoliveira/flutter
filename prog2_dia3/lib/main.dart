import 'package:flutter/material.dart';

void main() {
  runApp(
    pagina1(),
  );
}

class pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Galeria de Foto"),
        ),
        drawer: Drawer(
          child: menu(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            //colocando a imahem como plano de fundo.
            image: DecorationImage(
              image: AssetImage("asset/imagem/img2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: conteudoPagina1(),
        ),
      ),
    );
  }
}

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FlutterLogo(),
      Text("Desenvoldido por"),
      Text("Augusto Cesar"),
      Icon(
        Icons.copyright,
      )
    ]);
  }
}

class conteudoPagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Minhas viagens"),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 200,
            width: 200,
            //color: Colors.green,
            child: Image.asset("asset/imagem/img1.jpeg"), //adicionando a imagem
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 200,
            width: 200,
            //color: Colors.yellow,
            child: Image.network(
                "https://v5j9q4b5.rocketcdn.me/wp-content/uploads/2021/09/fundo-do-mar-estrutura-misterios-e-curiosidades-sobre-o-oceano-12-960x600.jpg.webp"),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Curta e compartilhe"),
              Icon(
                Icons.pan_tool_alt,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
