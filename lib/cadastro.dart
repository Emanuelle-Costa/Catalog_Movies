import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var edtUrl = TextEditingController();
  var edtTitulo = TextEditingController();
  var edtGenero = TextEditingController(); 
  var edtDuracao = TextEditingController();
  var edtAno = TextEditingController();
  var edtDescricao = TextEditingController();
  List<String> itens = ['Livre', '10 anos', '12 anos', '14 anos', '16 anos', '18 anos'];
  String? selectedItem = 'Livre';

  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cadastrar Filme"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: edtUrl,
                  decoration: InputDecoration(
                    hintText: "Url Imagem"
                  ),
                ),
                TextFormField(
                  controller: edtTitulo,
                  decoration: InputDecoration(
                      hintText: "Título"
                  ),
                ),
                TextFormField(
                  controller: edtGenero,
                  decoration: InputDecoration(
                      hintText: "Gênero"
                  ),
                ),
                Row(
                  children: [
                    Text('Faixa Etária:',
                      style: TextStyle(
                      fontSize: 16, 
                      color: Colors.grey
                      )
                    ),
                    DropdownButton<String>(
                      value: selectedItem,
                      items: itens
                        .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text (item),
                        ))
                        .toList(),
                          onChanged: (item) => setState(() => selectedItem = item),
                      ),
                     ],  
                ),
                TextFormField(
                  controller: edtDuracao,
                  decoration: InputDecoration(
                      hintText: "Duração"
                  ),
                ),
        
                Row(
                  children: [
                    Text('Nota:    ',
                      style: TextStyle(fontSize: 16, color: Colors.grey)
                    ),
                    SmoothStarRating(
                      starCount: 5,
                      size: 40.0,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      color: Colors.blue,
                      borderColor: Colors.blue,
                      spacing:2.0,
                      onRated: (value){
                        setState(() {
                          rating = value;
                        });
                      },
                    )
                    ],
                  ), 
                  TextFormField(
                  controller: edtAno,
                  decoration: InputDecoration(
                      hintText: "Ano"
                  ),
                ),
                TextFormField(
                  maxLines: 5,
                  controller: edtDescricao,
                  decoration: InputDecoration(
                      hintText: "Descrição"   
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
                    onPressed: (){},
                    child: const Icon(Icons.save_outlined),
                    ),
      ),
    );
  }
}