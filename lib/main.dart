import 'dart:math';

import 'package:flutter/material.dart';

//Essa classe representa o widget responsável
//por gerir todo o app.
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

//Método onde devemos indicar o que nosso widget
//irá apresentar como: sua composição e o que ele
//mostra ao usuário.
  @override
  Widget build(BuildContext context) {
    //Classe MaterialAapp: Classe que segue regras
    //do material (material.io) e sabe gerenciar um app
    //como um todo.
    return const MaterialApp(
      //Estou dizendo que quando rodar a aplicação
      //vai rodar a HomePage
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Essa classe representa o widget onde vamos montar
//a nossa tela.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Área básica para criar uma página
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tubarao Femea"),
        actions: [
          IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Calcula automático caso eu coloque apenas largura
            //ou altura, mas é obrigatório conter um dos dois
            //e o child.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    //Através do BoxDecoration, podemos customizar
                    //o aspecto visual de um Container.
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCorAaleatoria(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget caixa() {
    return SizedBox(
        width: 120,
        height: 120,
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
          colors: [
            geraCorAaleatoria(),
            geraCorAaleatoria(),
            geraCorAaleatoria(),
            geraCorAaleatoria(),
          ],
        ))));
  }

  Widget linha(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    );
  }

  Widget duasCaixas() {
    return linha(
      [
        caixa(),
        caixa(),
      ],
    );
  }
}

//Escolhe uma cor aleatoriamente
Color geraCorAaleatoria() {
  final random = Random();

  return Color.fromARGB(
      255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}

//todo projeto em dart começa a execução pelo
//método main
void main() => runApp(const Aplicacao());
