import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formation apcpedagogie.com'),
        backgroundColor: const Color.fromARGB(190, 24, 255, 255),
      ),
      body: Column(
        //Tous les éléments sont emballés
        children: [
          //Dans cette colonne
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 20,
            child: Text('Démonstration de Row',
                style: TextStyle(
                    color: Color.fromRGBO(69, 235, 18, 1),
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              /////////////Premier élément
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'apcpedagogie',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              //////////////////Deuxsième élément
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'apcpedagogie',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              /////////////////Troisième élément
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'apcpedagogie',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
            child: Text(
              'Démonstration de Column',
              style: TextStyle(
                  color: Color.fromARGB(255, 18, 50, 235),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              /////////////Premier élément
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'apcpedagogie',
                    style: TextStyle(color: Color.fromARGB(255, 18, 50, 235)),
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              //////////////////Deuxsième élément
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'apcpedagogie',
                    style: TextStyle(color: Color.fromARGB(255, 18, 50, 235)),
                  ),
                ),
              ),
              /////////////////Troisième élément
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'apcpedagogie',
                    style: TextStyle(color: Color.fromARGB(255, 18, 50, 235)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
