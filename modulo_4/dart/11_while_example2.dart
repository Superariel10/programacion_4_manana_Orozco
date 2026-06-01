import 'dart:io';

void main() {
  // Forma básica
  int totalsillas = 0;
  int cantidadempleados = 0;
  int conteo = 0;
  while(true){
  print('Ingrese un numero de sillas por hora');
  int conteo = int.parse(stdin.readLineSync()!);
  if (conteo == 0){
    break;
  }
  totalsillas += conteo;
  cantidadempleados++;
  if(conteo < 2){
    print('Produccion baja');
  }
  else if(conteo <= 4){
    print('Produccion normal');
  }
  else{
    print('Produccion alta');
  }
  double promedio = (totalsillas / cantidadempleados);
  print('Total de sillas por hora:$totalsillas,Cantidad de empleados:$cantidadempleados, Promedio de sillas por empleado:$promedio');
  }
}