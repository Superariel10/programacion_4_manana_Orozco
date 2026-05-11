fun main() {
  println("Controles de Flujo When-can bloque de codigos")
  println("Nombre")
  val nombrePaciente = readLine()?.trim()?.lowercase()?:"Sin identificacion"
  println("Nivel de Sacramiento (BAUTIZO/CONFIRMACION/ORDEN_SACERDOTAL/MATRIMONIO)")
  val nivel = readLine()?.trim()?.uppercase()?:""

  when (nivel){
     "BAUTIZO"->{
         println("BAUTIZO: Paciente: $nombrePaciente")
         print("Bautizo Registrado")
     }
     "CONFIRMACION"->{
         println("CONFIRMACION: Paciente: $nombrePaciente")
         print("Confirmacion registrada")
     }
     "ORDEN_SACERDOTAL"-> println("ORDEN_SACERDOTAL: Paciente: $nombrePaciente")
     "MATRIMONIO"-> println("MATRIMONIO: Paciente: $nombrePaciente")
     else -> println("nivel no reconocido")
  }
  println("")
}