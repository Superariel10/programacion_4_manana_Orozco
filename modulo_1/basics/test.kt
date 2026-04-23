fun main() {
    var negativo = 0
    var vacio = 0

    for (i in 1..5) {
        print("Nombre del titular: ")
        val nombre = readLine()!!
        print("Saldo actual: ")
        val saldo = readLine()!!.toDouble()
        println("$nombre, $saldo")

        when {
            saldo < 0 -> {
                println("Saldo negativo")
                negativo++
            }
            saldo == 0.0 -> {
                println("Sin fondos")
                vacio++
            }
            saldo > 200 -> {
                println("Saldo normal")
            }
            else -> {
                println("Saldo bajo")
            }
        }
    }
    println("Las cuentas con saldo negativo son $negativo y sin fondos fueron $vacio")
}
fun main() {
    print("Ingrese el peso: ")
    val peso = readLine()!!.toDouble()
    var producto = 0.0

    when {
        peso <= 10 -> {
            producto = 2.50
        }
        peso <= 20 -> {
            producto = 2.50 + 1.80
        }
        else -> {
            producto = 2.50 + 0.90
        }
    }
    println("El costo del envío es: $producto")
}
fun main() {
    var sinOcupacion = 0
    var media = 0
    var alta = 0
    for(i in 1..6){
    print("Ingrese porcentaje de ocupación: ")
    val habitacion = readLine()!!.toDouble()

    when {
        habitacion == 0.0 -> {
            println("Sin ocupación")
            sinOcupacion++
        }
        habitacion <= 40 -> {
            println("Ocupación baja")
        }
        habitacion <= 70 -> {
            println("Ocupación media")
            media++
        }
        else -> {
            println("Ocupación alta")
            alta++
        }
    }
    }
    println("Alta: $alta, Media: $media, Sin ocupación: $sinOcupacion")
}
fun main() {
    var premium = 0

    while (true) {
        print("Ingrese el pago (0 para salir): ")
        val pago = readLine()!!.toDouble()

        if (pago == 0.0) {
            break
        }
        when {
            pago <= 12 -> {
                println("Plan básico")
            }
            pago <= 20 -> {
                println("Plan estándar")
            }
            else -> {
                println("Plan premium")
                premium++
            }
        }
        if (pago > 500) {
            println("Meta alcanzada")
        } else {
            println("Meta pendiente")
        }
    }
    println("Cantidad de planes premium: $premium")
}