import 'dart:convert';
import 'dart:io';
import 'package:calculator_imc/calculator.dart';
import 'package:calculator_imc/main.dart' as calculator_imc;
import 'package:calculator_imc/person.dart';

void main(List<String> arguments) {
  String messageError = 'Valores inseridos estan errado por favor tente nuevamente';
  List valuesInserted = [];
  while (valuesInserted.contains('S') != true) {
    Person person = Person(); 
    print('Digite o nome');
    var name = stdin.readLineSync(encoding: utf8);
    person.setName(name.toString());
    print('Digite altura (cm) ou S para sair');
    var height = stdin.readLineSync(encoding: utf8);
    if (height != null && double.tryParse(height) != null) {
      valuesInserted.add(double.tryParse(height));
       person.setHeight(double.tryParse(height)!);
    }else{
      if(height.toString().toLowerCase() != 's'){
        print(messageError);
        return;
      }
      return;
    }
    print('Digite peso (kg) ou S para sair');
    var weight = stdin.readLineSync(encoding: utf8);
    if (weight != null && (double.tryParse(weight) != null)) {
      valuesInserted.add(double.tryParse(weight));
       person.setWeight(double.tryParse(weight)!);
    }else{
      if(weight.toString().toLowerCase() != 's'){
        print(messageError);
        return;
      }
      return;
    }
    double response = BMICalculator.calculate(weightCurrent: person.getWeight(), heightCurrent: person.getHeight());
     print('Verificar dados inseridos:');
     print(person.toMap());
     print('Resultado: ${BMICalculator.classificationBmi(response)}');
  }  
}
