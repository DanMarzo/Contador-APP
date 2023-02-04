import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,//Apaga o Debug
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool get IsEmpty => count == 0;
  bool get IsFull => count == 20;

  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/fundo.jpg'),
            fit: BoxFit.cover, //ele é o melhor para preencher a tela
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            IsFull? "Esta lotado" : "Pode entrar",
            style: const TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
          ),

          //SizedBox(height: 20)
          Padding(
            padding: EdgeInsets.all(40),
            child: Text(
              '$count',
              style: TextStyle(
                  fontSize: 100,
                  color: IsFull ? Colors.red : Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: IsEmpty ? null : decrement,
                style: TextButton.styleFrom(
                    backgroundColor: IsEmpty ? Colors.white54 : Colors.white,
                    fixedSize: Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )),
                child: Text(
                  'Saiu',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: IsFull? null : increment,
                style: TextButton.styleFrom(
                    backgroundColor: IsFull ? Colors.white54 : Colors.white,
                    fixedSize: Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )),
                child: Text('Entrou'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}


//Atalho stless => Cria a classe do widget
//Atalho stf => Cria a classe do widget

