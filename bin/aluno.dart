//classe
class Aluno {
  String cpf;
  String nome;
  int idade;
  String sexo;
  String telefone;

  Aluno(this.cpf, this.nome, this.idade, this.sexo, this.telefone);
}

//lista
var alunos = [
  Aluno('123.456.789-00', 'Farlley Reis', 20, 'Masculino', '71 9 91144200'),
  Aluno('987.654.321-00', 'João Pedro', 22, 'Masculino', '71 9 91514534'),
  Aluno('412.531.931-42', 'Raissa Brito', 19, 'Feminino', '71 9 982951894'),
  Aluno('451.452.612-94', 'Ana Beatriz', 19, 'Feminino', '71 9 9819204804')
];
