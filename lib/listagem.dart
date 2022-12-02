import 'package:catalog_movies/cadastro.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Listagem());
}

class Listagem extends StatefulWidget {
  const Listagem({super.key});

  @override
  State<Listagem> createState() => _ListagemState();
}



class _ListagemState extends State<Listagem> {
  
  void _showDialog(){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: const Text("Equipe:"),
          contentPadding: const EdgeInsets.all(20.0),
          content: const Text("Emanuelle Maria, \n\nJoão Paulo e\n\nRafael Soares"),
          actions: [
          TextButton(
            onPressed: () {
             Navigator.pop(context);
           },
           child: const Text("OK"),
          )
        ] 
      );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Filmes"),
          actions: [
            IconButton(onPressed: (){
              _showDialog();
            }, 
              icon: Icon(Icons.info), 
            ),
          ],
        ),
        body: Center(

        ),
          floatingActionButton: 
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                return Cadastro();
                }),
              );
            },
          ),

      )
    );
  }
}