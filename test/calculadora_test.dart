import 'package:calculadora/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Pessoa - calcularIMC retorna o IMC correto', () {
    // Create a Pessoa object with known weight and height
    Pessoa pessoa = Pessoa();
    pessoa.peso = 70.0;
    pessoa.altura = 1.80;

    // Call the calcularImc method and store the result
    double imc = pessoa.calcularImc(pessoa.nome, pessoa.peso!, pessoa.altura!);

    // Assert that the calculated IMC is close enough to the expected value
    expect(imc, closeTo(21.6, 0.1)); // Adjust tolerance as needed
  });
}
