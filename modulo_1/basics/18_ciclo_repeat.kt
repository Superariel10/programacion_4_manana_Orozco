fun main() {
  println("Controles de Flujo Iteraciones, Ciclos repetitivos-Ciclo While")
  println("While basico")
  var contador = 1
  while(contador <= 5){
      println(contador)
      contador++;
  }
  println("Do While")
  contador = 1
  do {
      println(contador)
      contador++;
  } while(contador <= 5)
  println("break continue")
  contador = 1
  while(contador <= 10){
      contador++;
      if(contador==3) continue
      if(contador==7) break
      println(contador)
  }
  var input: String
  while(true){
    println("Escribe 'salir' para terminar:")
    input=readLine()?:""
    if (input=="salir") break
    println("usted ingreso: $input")
  }
  while(true){
    println("Escribe 'salir' para terminar:")
    input=readLine()?:""
    if (input=="salir") break
    else if (input=="saludar")
         println("Buenos dias usuario")
    else if (input=="sumar") 
         println("la suma total es 25")
    else if (input=="tabla")
         println("Crear tabla")
    else 
         println("Opcion no registrada")
    println("usted ingreso: $input")
  }
  println("Controles de Flujo Iteraciones, Ciclos repetitivos-Ciclo Repeat")
  println("Cuantas pulsaciones tomar para calcular frecuencia cardiaca")
  val mediciones=readLine()?.toIntOrNull()?:3
  var totalPulsaciones=0
  repeat(mediciones){i->
      println("Medicion ${i+1} (pulsos en 15 seg.)")
      val pulsos=readLine()?.toIntOrNull()?:0
      totalPulsaciones+= pulsos *4//para 60 segs
  }
  val promedio =totalPulsaciones/mediciones
  println("Frecuencia cardiaca promedio : $promedio lpm")
  println("Clasificacion: ${
      when{
          promedio <60->"Bradicardia"
          promedio <=100->"Normal"
          else -> "Taquicardia"
      }
  }")
  println("Cuantas mediciones para tomar la temperatura")
  val medicion=readLine()?.toIntOrNull()?:3
  var totaltemperatura=6
  repeat(medicion){i->
      println("Medicion ${i+1} (pulsos en 15 seg.)")
      val temperatura=readLine()?.toIntOrNull()?:0
      totaltemperatura+= temperatura *4//para horas
  }
  val total =totaltemperatura/mediciones
  println("Temperatura promedio : $total C")
  println("Clasificacion: ${
      when{
          total > 38.5->"Fiebre"
          else -> "Normal"
      }
  }")
}