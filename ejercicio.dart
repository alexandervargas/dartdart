class Vehiculo {
  int llantas;
  int asientos;
  String modelo;
  String marca;

  Vehiculo(this.llantas, this.asientos, this.marca, this.modelo);

  @override
  String toString() {
    return """ 
    Vehiculo:[ 
      llantas: $llantas
      asientos: $asientos
      modelo: $modelo
      marca: $marca
      ]
    """;
  }
}

int compareToDateNow(String date) {
  DateTime currentTime = DateTime.now();
  DateTime otherDate = DateTime.parse(date);
  return currentTime.compareTo(otherDate);
}

String compareToDateNowasString(String date) {
  DateTime currentTime = DateTime.now();
  DateTime otherDate = DateTime.parse(date);
  int result = currentTime.compareTo(otherDate);
  return ((result >= 0) ? 'ahora o en el futuro' : ' del pasado');
}

String compareToDateNowasStringTwo(String date) {
  int result = DateTime.now().compareTo(DateTime.parse(date));
  return ((result >= 0) ? 'ahora o en el futuro' : ' del pasado');
}

void dateFunct() {
  DateTime currentDate = DateTime.now();
  print(currentDate.toString());
  print(currentDate.toIso8601String());
  print(currentDate.toUtc());
  print(currentDate.toLocal());

  DateTime date = DateTime.parse('2010-11-20');
  print(date.toString());
  print(date.toIso8601String());
  print(date.toUtc());
  print(date.toLocal());

  print(currentDate.timeZoneName);

  Duration diff = currentDate.difference(date);

  print(" diferencia de dias ${diff.inDays}");
}

bool esMayorFunction(int numeroUno, int numeroDos) {
  return (numeroUno > numeroDos);
}

String esMayorAsString() {
  String resString =
      (esMayorFunction(57, 16) == true) ? "si es mayor" : "no es mayor";
  return resString;
}

String switchCurse(String curse) {
  switch (curse) {
    case "A":
      {
        return "Excelente";
      }
    case "B":
      {
        return "Bueno";
      }

    case "C":
      {
        return "Debe mejorar";
      }

    case "D":
      {
        return "Malo";
      }

    default:
      {
        return "Vuelve a intentar";
      }
  }
}

void whileFunct() {
  int count = 1;
  bool loppWhile = true;

  while (loppWhile) {
    print(" dentro del while ${count}");
    count++;
    if (count == 5) {
      loppWhile = false;
    }
  }

  int countTwo = 1;
  while (countTwo <= 10) {
    print("dentro del while ${countTwo}");
    countTwo++;
    if (countTwo == 4) {
      break;
    }
  }
  print("afuera del while ");
}

void doFunct() {
  int n = 10;
  do {
    print(n);
    n--;
  } while (n > 0);

  print("salio");
}

void factorialFunct() {
  int num = 7;
  int factorial = 1;

  while (num >= 4) {
    factorial = factorial * num;
    num--;
  }
  print("The factorial is ${factorial}");
}

void compareDateFunct() {
  print(compareToDateNowasString('2010-11-20'));
  print(compareToDateNowasString('2024-09-01'));
  print(compareToDateNowasStringTwo('2012-11-20'));
  print(compareToDateNowasStringTwo('2015-09-01'));

  String momento = ((compareToDateNow('2030-11-20') >= 0)
      ? 'ahora o en el futuro'
      : ' del pasado');
  print(momento);

  String momentoDos = ((compareToDateNow('2012-09-01') >= 0)
      ? "ahora o en el futura"
      : "del pasado");
  print(momentoDos);
}

void booleanFunct() {
  bool isTrue = true;
  bool isTrueTwo = esMayorFunction(5, 6);
  print(isTrueTwo);

  print(esMayorAsString());

  String esMayorValue;
  if (esMayorFunction(8, 36)) {
    esMayorValue = "es mayor desde un if";
  } else {
    esMayorValue = "no es mayor desde un if";
  }
  print(esMayorValue);

  dynamic esMayorDinamico = ((isTrue != true) ? "si es mayor" : 52);

  var esMayorVar = ((5 > 6) ? "si es mayor tipo var" : 52);
  bool esMayor = (6 > 5);
  print(esMayor);

  print(esMayorDinamico);
  print(" es mayor de tipo var ${esMayorVar}");
}

void dataTypeFunct() {
  var number = "hola";
  print(number.runtimeType);

  if (number == 'hola') {
    print('Es un String');
  } else {
    print('este es un numero');
  }
}

void classExampleFunct() {
  Vehiculo nuevo = new Vehiculo(4, 6, 'Toyota', '2021');
  print(nuevo.toString());
  dynamic test = 15;
  print(test.runtimeType);
  print(test.toString());
  print(test);
  test = 'hola Mundo desde dart';
  print(test.runtimeType);
  print(test);
}

//----------------------------------------------------------------------
void main() {
  compareDateFunct();

  booleanFunct();

  dateFunct();

  print(switchCurse("A"));

  whileFunct();

  doFunct();

  factorialFunct();

  dataTypeFunct();

  classExampleFunct();
}
