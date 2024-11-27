import 'aluno.dart';
import 'curso.dart';

//classe
class Matricula {
  int id;
  String cpfAluno;
  int idCurso;
  String data;

  Matricula(this.id, this.cpfAluno, this.idCurso, this.data);
}

//lista
var matriculas = [
  Matricula(1, '123.456.789-00', 1, '2024-10-12'),
  Matricula(2, '987.654.321-00', 1, '2024-10-12'),
  Matricula(3, '412.531.931-42', 2, '2024-10-12'),
  Matricula(3, '451.452.612-94', 3, '2024-08-12')
];

//Esta função exibe um relatorio do curso
void mostrar_Info_Matriculas(
    List<Aluno> alunos, List<Curso> cursos, List<Matricula> matriculas) {
  // Percorro a lista de matrículas
  for (var matricula in matriculas) {
    // Busco o aluno pela matrícula e paro de buscar quando encontrar
    Aluno? aluno;
    //percorro a lista de alunos
    for (var aluno1 in alunos) {
      if (aluno1.cpf == matricula.cpfAluno) {
        aluno = aluno1;
        break;
      }
    }

    // Se não encontrar o aluno, atribui um valor nulo
    if (aluno == null) {
      aluno = Aluno('0', 'Aluno não encontrado', 0, '0', '0');
    }

    // Busco o curso pela matrícula e paro quando enconrtar
    Curso? curso;
    //percorro a lista de cursos
    for (var curso1 in cursos) {
      if (curso1.id == matricula.idCurso) {
        curso = curso1;
        break;
      }
    }

    // Se não encontrar o curso, atribui um valor padrão
    if (curso == null) {
      curso = Curso(0, 'Curso não encontrado', 0, 0);
    }

    // Mostra as informações
    print(
        'O Aluno(a) ${aluno.nome} se matriculou no curso de ${curso.nome}, pagando ${curso.valor}, em ${matricula.data}.');
  }
}
