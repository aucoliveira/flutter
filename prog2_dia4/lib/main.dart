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
      //home: pagina3(),
      //home: login(),
      routes: {
        "/": (context) => login(),
        "pagina1": (context) => pagina1(),
        "pagina2": (context) => pagina2(),
        "pagina3": (context) => pagina3(),
        "/": (context) => login(),
      },
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
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "pagina2");
              },
              icon: Icon(
                Icons.arrow_forward,
              ),
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
        onPressed: () {
          Navigator.popAndPushNamed(context, "pagina1");
        },
        child: Text("Pagina 1"),
      ),
      TextButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, "pagina2");
        },
        child: Text("Pagina 2"),
      ),
      TextButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, "pagina3");
        },
        child: Text("Pagina 3"),
      ),
      TextButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, "/");
        },
        child: Text("login"),
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
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "pagina1");
              },
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
            Text("Pagina 2"),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "pagina3");
              },
              icon: Icon(
                Icons.arrow_forward,
              ),
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
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "pagina2");
              },
              icon: Icon(
                Icons.arrow_back,
              ),
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

class login extends StatelessWidget {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "http://caminhandoembeleza.com/wp-content/uploads/2020/12/03191435682598.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                  print("$email");
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                onChanged: (value) {
                  senha = value;
                },
                obscureText: true, //esconde a senha
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'senha',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextButton(
                onPressed: () {
                  if (email == "fit@fit.br" && senha == "123") {
                    print("Entrada autorizada");
                    Navigator.popAndPushNamed(context, "pagina1");
                  } else {
                    print("Email ou senha incorreto");
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Usuario ou senha incorreto"),
                        );
                      },
                    );
                  }
                },
                child: Text("Login"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blueAccent, //cor do fundo

                  onSurface: Colors.grey,
                  padding: const EdgeInsets.all(25), //margem no botão ou
                  //fixedSize: const Size(100, 100), //tamanho fixo da margem
                  shape: RoundedRectangleBorder(
                    //side: BorderSide(color: Colors.green, width: 5), // borda do botão
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
