class Temperatura(celsius: Double) {

    // ENCAPSULAMIENTO: el setter valida antes de asignar
    var celsius: Double = celsius
        set(value) {
            require(value >= -273.15) { "Temperatura bajo el cero absoluto" }
            field = value  // 'field' es el backing field
        }

    // ABSTRACCIÓN: el usuario consulta fahrenheit sin saber la fórmula
    val fahrenheit: Double
        get() = celsius * 9.0 / 5.0 + 32.0

    val kelvin: Double
        get() = celsius + 273.15

    val descripcion: String
        get() = when {
            celsius < 0  -> "Bajo cero, sacramiento cancelado"
            celsius < 15 -> "Frío, sacramiento cancelado"
            celsius < 25 -> "Templado, sacramiento no cancelado"
            celsius < 35 -> "Caluroso, sacramiento no cancelado"
            else         -> "Muy caluroso, sacramiento cancelado"
        }
}

fun main() {
    val temp = Temperatura(20.0)
    println("${temp.celsius}°C = ${temp.fahrenheit}°F = ${temp.kelvin}K")
    println(temp.descripcion)  // Templado

    temp.celsius = -5.0
    println("${temp.celsius}°C → ${temp.descripcion}")  // Bajo cero

    // temp.celsius = -300.0  // IllegalArgumentException
}