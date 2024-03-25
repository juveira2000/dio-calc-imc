import 'dart:io';

import 'package:calculadora/calculadora.dart' as calculadora;
import 'package:calculadora/pessoa.dart';

void main(List<String> arguments) {
  String? nome = "";
  double? peso = 0.0;
  double? altura = 0.0;

  Pessoa pessoa = Pessoa();

  try {
    print("\nDigite seu Nome: ");
    nome = stdin.readLineSync().toString();
  } catch (e) {
    print("$nome invalido: $e");
  }

  try {
    print("\nDigite sua altura - ex.(1.82 para 1 metro e oitenta e dois) ");
    altura = double.parse(stdin.readLineSync().toString().replaceAll(',', '.'));
  } catch (e) {
    print("$altura invalido: ${e}");
  }

  try {
    print("\nDigite seu peso: ");
    peso = double.parse(stdin.readLineSync().toString().replaceAll(',', '.'));
  } catch (e) {
    print("$peso invalido: $e");
  }

  String classificacao =
      pessoa.classificaIMC(pessoa.calcularImc(nome, peso, altura));
  print("Resultado: $classificacao");
}
