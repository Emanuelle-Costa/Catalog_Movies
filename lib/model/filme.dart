class Filme{
  int id;
  String imagem;
  String titulo;
  String genero;
  String faixa_etaria;
  String duracao;
  double nota;
  int ano;
  String descricao;

  Filme(this.imagem, this.titulo, this.genero, this.faixa_etaria, this.duracao, this.nota, this.ano, this.descricao, {this.id = 0});

  @override
  String toString() {
    return 'Filme{id: $id,  $imagem, Titulo: $titulo}';
  }
}