class Rectangulo(val ancho: Double, val alto: Double) {
    val area:      Double get() = ancho * alto
    val perimetro: Double get() = 2 * (ancho + alto)

    // Siempre llaman al constructor primario con this(...)
    constructor(lado: Double) : this(lado, lado)
    constructor(ancho: Int, alto: Int) : this(ancho.toDouble(), alto.toDouble())

    override fun toString() = "Rectángulo(${ancho}x${alto}) | área=${area}"
}

fun main() {
    val r1 = Rectangulo(8.0, 2.0)
    val r2 = Rectangulo(5.0)        // cuadrado
    val r3 = Rectangulo(9, 3)       // con Int

    println(r1)  // Rectángulo(8.0x2.0) | área=16.0
    println(r2)  // Rectángulo(5.0x5.0) | área=25.0
    println(r3)  // Rectángulo(9.0x3.0) | área=27.0

}