fun main() {
  println("Controles de Flujo Iteraciones, Ciclos repetitivos-Ciclo For")
  println("For con rango")
  for(i in 1..10){
      println(i*5)
  }
  println("For con until")
  for(i in 1 until 5){
      println(i)
  }
  println("For con pasos")
  for(i in 1..10 step 3){
      println(i)
  }
  println("For descendente")
  for(i in 10 downTo 1){
      println(i)
  }
  println("For con listas")
  val nombres = listOf("Juan", "Maria", "Jose")
  for(nombre in nombres){
      println(nombre)
  }
  println("For con listas index valor")
  for((valor, index) in nombres.withIndex()){
      println("$index->$valor")
  }
  println("For con break")
  for(i in 1..10){
      if(1==5){
          break;
      }
  }
  println("For con continue")
  for(i in 1..10){
      if(i==3) continue;
      println("item $i")
  }
  println("For con continue")
  for(i in 1..10){
      if(i==3) continue;
      if(i==7) break;
      println("item $i")
  }
  val sacramiento = listOf(
  Triple("Moreno, M", 36.2, 92),
  Triple("Zamora, L", 32.1, 90),
  Triple("Beltran, R", 40.6, 98),)
  for ((posicion, persona) in sacramiento.withIndex()){
      val (nombre, temperatura, spo2) = persona
      val alertaTemp = if(temperatura>=38.0) "Fiebre, no apto para el sacramiento" else "Normal"
      val alertaSpo2 = if(spo2<95.0) "Baja" else "Normal"
      println("Cama $posicion - $nombre - Temp: $temperatura Gdo.Cent. $alertaTemp - Spo2: $spo2 $alertaSpo2")
  }
}