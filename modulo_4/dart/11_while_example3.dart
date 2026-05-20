import 'dart:io';

void main() {
  // Forma básica
  int totalatendidos = 0;
  int cantidaddoctores = 0;
  int conteo = 0;
  double horas = 0;
  double totalhoras = 0;
  while(true){
  print('Ingrese el numero de pacinentes atendidos: ');
  int conteo = int.parse(stdin.readLineSync()!);
  print('Horas trabajadas: ');
  double horas = double.parse(stdin.readLineSync()!);
  if (horas == 0){
    break;
  }
  totalatendidos += conteo;
  cantidaddoctores++;
  totalhoras += horas;
  if(conteo < 3 && horas > 0){
    print('Atencion lenta');
  }
  else if(conteo <= 6 && horas > 0){
    print('Atencion normal');
  }
  else{
    print('Atecion rapida');
  }
  double promedio = (totalatendidos / cantidaddoctores);
  print('Total de pacientes atendidos por hora:$totalatendidos,Cantidad de doctores:$cantidaddoctores, Promedio de pacientes atendidos por doctor:$promedio,Total de horas trabajadas: $totalhoras');
  }
}