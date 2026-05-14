class Usuario(val nombre: String, val email: String) {
    val nombreNormalizado: String
    val dominioEmail: String

    init {
        // Encapsulamiento en acción: validamos antes de construir
        require(nombre.isNotBlank()) { "El nombre no puede estar vacío" }
        require(email.contains("@")) { "Email inválido: $email" }

        nombreNormalizado = nombre.trim().lowercase()
        dominioEmail      = email.substringAfter("@")
    }
}

fun main() {
    val u = Usuario("  Carlos Alquinga  ", "carlos@kotlin.dev")
    println(u.nombreNormalizado)  // carlos alquinga
    println(u.dominioEmail)       // kotlin.dev
    println("Usuario registrado para el sacramiento")

    // Usuario("", "invalido")   // IllegalArgumentException — require falla
}