import 'matricula.dart';

//classe
class Curso {
  int id;
  String nome;
  int cargaHoraria;
  double valor;

  Curso(this.id, this.nome, this.cargaHoraria, this.valor);
}

//lista
var cursos = [
  Curso(1, 'Curso de Programação', 120, 1500.00),
  Curso(2, 'Curso de Design', 100, 1200.00),
  Curso(3, 'Curso de Culinaria', 150, 1900.00)
];

// Esta função encontra o curso mais procurado
void cursos_Mais_Procurados(List<Curso> cursos, List<Matricula> matriculas) {
  var contagem_De_cursos = List<int>.filled(cursos.length, 0);

  // Conto quantas vezes cada curso foi escolhido
  for (var matricula in matriculas) {
    for (var i = 0; i < cursos.length; i++) {
      if (cursos[i].id == matricula.idCurso) {
        contagem_De_cursos[i]++;
      }
    }
  }

  // Verifica qual curso foi o mais procurado
  int mais_Procurados = 0;
  for (var i = 1; i < contagem_De_cursos.length; i++) {
    if (contagem_De_cursos[i] > contagem_De_cursos[mais_Procurados]) {
      mais_Procurados = i;
    }
  }

  // Mostra o curso mais procurado
  var cursos_Mais_Procurados = cursos[mais_Procurados];
  print(
      'O curso mais procurado foi ${cursos_Mais_Procurados.nome} com ${contagem_De_cursos[mais_Procurados]} matrículas.');
}
