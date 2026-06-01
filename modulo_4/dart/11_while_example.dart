import 'dart:io';

void main() {
  // Forma básica
  int totalcajas = 0;
  int cantidadempleados = 0;
  int conteo = 0;
  while(true){
  print('Ingrese un numero de cajas');
  int conteo = int.parse(stdin.readLineSync()!);
  if (conteo == 0){
    break;
  }
  totalcajas += conteo;
  cantidadempleados++;
  if(conteo < 20){
    print('Rendimiento bajo');
  }
  else if(conteo < 50){
    print('Rendimiento normal');
  }
  if(conteo > 50){
    print('Rendimiento excelente');
  }
  double promedio = (totalcajas / cantidadempleados);
  print('Total de cajas:$totalcajas,Cantidad de empleados:$cantidadempleados, Promedio de cajas por empleado:$promedio');
  }
}