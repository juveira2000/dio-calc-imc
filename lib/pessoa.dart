class Pessoa {
  String? nome;
  double? peso;
  double? altura;

  double calcularImc(nome, peso, altura) {
    double imc = 0.0;

    imc = (peso! / (altura! * altura!));

    return imc;
  }

  String classificaIMC(double imc) {
    String classificacao = "";

    if (imc < 16) {
      classificacao = "IMC: $imc - Magreza Grave";
    } else if (imc >= 16 && imc < 17) {
      classificacao = "IMC: $imc - Magreza Moderada";
    } else if (imc >= 17 && imc < 18.5) {
      classificacao = "IMC: $imc - Magreza Leve";
    } else if (imc >= 18.5 && imc < 25) {
      classificacao = "IMC: $imc - Saudavel";
    } else if (imc >= 25 && imc < 30) {
      classificacao = "IMC: $imc - Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      classificacao = "IMC: $imc - Obesidade Gray 1";
    } else if (imc >= 35 && imc < 40) {
      classificacao = "IMC: $imc - Obesidade grau II(severa)";
    } else if (imc >= 40) {
      classificacao = "IMC: $imc - Obesidade Grau III (Mórbida)";
    }

    return classificacao;
  }
}
