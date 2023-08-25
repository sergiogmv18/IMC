import 'package:calculator_imc/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(BMICalculator.calculate(weightCurrent:73, heightCurrent: 176).toStringAsFixed(1), '23.6');
  });
  test('show estado: 1', () {
    expect(BMICalculator.classificationBmi(32), 'Obesidade Grau I');
  });
  test('show estado: 2', () {
    expect(BMICalculator.classificationBmi(377.16), 'Obesidade Grau III (moderada)');
  });
}
