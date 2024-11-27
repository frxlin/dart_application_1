import 'aluno.dart';
import 'curso.dart';
import 'matricula.dart';

void main() {
  // Mostra as informações das matrículas
  mostrar_Info_Matriculas(alunos, cursos, matriculas);

  // Mostra o curso mais procurado
  cursos_Mais_Procurados(cursos, matriculas);
}
