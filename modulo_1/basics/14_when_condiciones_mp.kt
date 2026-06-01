fun main() {
  println("Controles de Flujo When-can condiciones arbitrarias")
  println("Escriba codigo")
  println("Edad de la persona")
  val edadPersona = readLine()?.toIntOrNull()?:0
  println("Esta bautizado")
  val bautizo = readLine()?.trim()?.lowercase()=="s"
  val nivelSacramiento = if(bautizo){
      println("Nivel del sacramiento  (BAUTIZO/CONFIRMACION/BODA)")
      readLine()?.trim()?.uppercase()?:""
  } else ""
  val sacramiento = when{
     !bautizo && edadPersona <18-> 0.0
     !bautizo && edadPersona >=65 ->15.0
     !bautizo -> 45.0
     nivelSacramiento=="BAUTIZO"->20.0
     nivelSacramiento=="CONFIRMACION"->10.0
     nivelSacramiento=="BODA"->0.0
     else -> 30.0
  }
  println("Sacramiento elejido: $${"%.2f".format(sacramiento)}")
}