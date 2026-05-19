import 'dart:io';

void main() {
  // Forma básica
  print('Ingrese la nota');
  
  double nota = double.parse(stdin.readLineSync()!);

  if (nota >= 7) {
    print('Aprobado');
  } else {
    print('Reprobado');
  }

}