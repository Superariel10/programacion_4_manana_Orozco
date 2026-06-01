import 'dart:io';

void main() {
  // Forma básica
  print('Ingrese un numero');
  
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 0) {
    print('Positivo');
  } else if (numero < 0) {
    print('Negativo');
  } else {
    print('Cero');
  }

  print('EL numero es: $numero');

}