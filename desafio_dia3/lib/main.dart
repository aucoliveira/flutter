import 'package:flutter/material.dart';

void main() {
  runApp(
    pag1(),
  );
}

class pag1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("asset/imagem/img1.webp"),
            fit: BoxFit.cover,
          )),
          child: galeria(),
        ),
      ),
    );
  }
}

class galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(padding: EdgeInsets.all(10)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            height: 150,
            width: 110,
            //color: Colors.blue,
            child: Image.asset("asset/imagem/planet1.png"),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 150,
            width: 110,
            //color: Colors.yellow,
            child: Image.asset("asset/imagem/planet2.png"),
          ),
        ]),
        Padding(padding: EdgeInsets.all(10)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            height: 150,
            width: 110,
            //color: Colors.blue,
            child: Image.asset("asset/imagem/planet3.png"),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 150,
            width: 110,
            //color: Colors.yellow,
            child: Image.asset("asset/imagem/planeta4.png"),
          ),
        ]),
        Padding(
          padding: EdgeInsets.all(10),
        ),
        Container(
          height: 20,
          width: 200,
          color: Colors.white,
          child: Center(child: Text("Galeria de Foto")),
        ),
        Padding(padding: EdgeInsets.all(50)),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            elevation: 15,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: Text("Clique aqui"),
          onPressed: () {},
        ),
      ]),
    );
  }
}
