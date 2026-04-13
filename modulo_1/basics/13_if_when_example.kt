fun main() {
  println("Controles de Flujo When")
  println("Escriba codigo")
  val codigo = readLine()?.toIntOrNull()?:0
  val muestra = when(codigo){
      1->"Sangre venosa (4 horas)"
      2->"Orina (2 horas)"
      3->"Heces (24 horas)"
      4->"Hisopado nasofaringeo (6 horas)"
      5->"Biopsia (72 horas)"
      else ->"No registrada"
  }
  println("Tipo de muestra: $muestra")
}