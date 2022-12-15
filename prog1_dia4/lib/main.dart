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
      home: pagina1(),
    );
  }
}

class pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.gifer.com/9Ilu.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: conteudoPagina1(),
      ),
    );
  }
}

class conteudoPagina1 extends StatefulWidget {
  @override
  State<conteudoPagina1> createState() => _conteudoPagina1State();
}

class _conteudoPagina1State extends State<conteudoPagina1> {
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contador",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "$numero",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print("Entrou");
                  numero = numero + 1;
                  print("$numero");
                  setState(() {});
                },
                child: Text("Entrou"),
                style: TextButton.styleFrom(
                  primary: Colors.white, //cor princiapl
                  backgroundColor: Colors.blueAccent, //cor do fundo
                  onSurface: Colors.grey, //cor doefeito
                  //padding: EdgeInsets.all(50), //margem
                  fixedSize: Size(150, 150), //margem fixa
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(90), //arredondar a borda
                    side: BorderSide(
                      color: Colors.black, //cor da borda
                      width: 5, //espessura da borda
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextButton(
                onPressed: () {
                  if (numero > 0) {
                    numero = numero - 1;
                    print("$numero");
                    setState(() {});
                  } else {
                    numero = 0;
                    print("$numero");
                    setState(() {});
                  }
                },
                child: Text("Saiu"),
                style: TextButton.styleFrom(
                  primary: Colors.white, //cor princiapl
                  backgroundColor: Colors.blueAccent, //cor do fundo
                  onSurface: Colors.grey, //cor doefeito
                  //padding: EdgeInsets.all(50), //margem
                  fixedSize: Size(150, 150), //margem fixa
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(90), //arredondar a borda
                    side: BorderSide(
                      color: Colors.black, //cor da borda
                      width: 5, //espessura da borda
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
