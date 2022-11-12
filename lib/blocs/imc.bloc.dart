// ignore_for_file: unnecessary_new

import 'package:extended_masked_text/extended_masked_text.dart';

class ImcBloc {
  var pesoControl = new MaskedTextController(mask: '000');
  var alturaControl = new MaskedTextController(mask: '000');
  var resultImc = "";
  var resultMsg = "";

  bool calculate(String genre) {
    if (!isNumeric(alturaControl.text) || !isNumeric(pesoControl.text)) {
      return false;
    }

    double peso = double.parse(pesoControl.text);
    double altura = double.parse(alturaControl.text);
    double imc = (peso / (altura * altura)) * 10000;
    resultImc = imc.toStringAsFixed(1);

    if (genre == "M") {
      if (imc < 20) {
        resultMsg = "Abaixo do peso";
      } else if (imc >= 20 && imc <= 24.9) {
        resultMsg = "Peso normal";
      } else if (imc >= 25 && imc <= 29.9) {
        resultMsg = "Obesidade leve";
      } else if (imc >= 30 && imc <= 39.9) {
        resultMsg = "Obesidade moderada";
      } else if (imc > 40) {
        resultMsg = "Obesidade morbida";
      }
    } else {
      if (imc < 19) {
        resultMsg = "Abaixo do peso";
      } else if (imc >= 19 && imc <= 23.9) {
        resultMsg = "Peso normal";
      } else if (imc >= 24 && imc <= 28.9) {
        resultMsg = "Obesidade leve";
      } else if (imc >= 29 && imc <= 38.9) {
        resultMsg = "Obesidade moderada";
      } else if (imc > 39) {
        resultMsg = "Obesidade morbida";
      }
    }

    return true;
  }

  restart() {
    resultMsg = "";
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  
  var number = double.tryParse(s);
  if (number == null) {
    return false;
  }

  return number != 0;
}
