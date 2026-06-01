fun main() {
  println("Controles de Flujo When-can bloque de codigos")
  println("Nombre Paciente")
  val nombrePaciente = readLine()?.trim()?.lowercase()?:"Sin identificacion"
  println("Tiene Nivel Alerta (CRITICO/URGENTE/MODERADO/LEVE)")
  val nivel = readLine()?.trim()?.uppercase()?:""

  when (nivel){
     "CRITICO"->{
         println("ALERTA CRITICA: Paciente: $nombrePaciente")
         println("Llamar al medico de guardia")
         print("Activar protocolo urgencia critica")
     }
     "URGENTE"->{
         println("URGENTE: Paciente: $nombrePaciente")
         println("Priorizar en la sala de espera")
         print("Reevaluar en 15 minutos")
     }
     "Moderado"-> println("MODERADO: Paciente: $nombrePaciente")
     "LEVE"-> println("LEVE: Paciente: $nombrePaciente continuar espera normal")
     else -> println("nivel no reconocido")
  }
  println("")
}