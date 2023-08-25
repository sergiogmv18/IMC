class BMICalculator {
  
  // calculate bmi
  static calculate(double? weightCurrent, double? heightCurrent){
    if(weightCurrent  == null || heightCurrent == null){
      return 'valor informados não poden ser nulos';
    }else{
      double heightInMeters = heightCurrent / 100; 
      double bmi = weightCurrent / (heightInMeters * heightInMeters);
      bmi;
    }
  }

  // Get Classification BMI  
  static String classificationBmi(double bmi) {
    String clasification ='';
    switch(bmi){
      case < 16:
        clasification = 'Magreza grave';
        break;
      case 16:
      case < 17: 
        clasification = 'Magreza moderada';
        break;
      case 17:
      case < 18.5:
        clasification = 'Magreza leve';
        break;
      case 18.5:
      case < 25:
        clasification = 'Saudavel';
        break;
      case 25:
      case < 30:
        clasification = 'Sobrepeso';
        break;
      case 30:
      case < 35:
        clasification = 'Obesidade Grau I';
        break;
      case 35:
      case < 40:
        clasification = 'Obesidade Grau II (severa)';
        break;
      case >= 40:
        clasification = 'Obesidade Grau III (moderada)';
      break;
    }
    return clasification;
  }
}