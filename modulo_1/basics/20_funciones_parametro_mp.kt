fun main() {
  println("Funciones-Parametros por defecto")
  println(crearUsuario("Jhon", 25, "admin", true))
  println(crearUsuario("Lucho"))
  println(crearUsuario("Hanna", 30))
  println(crearUsuario("Marco", 30, "admin"))
  // Argumentos nombrados
  println(crearUsuario(edad = 40, nombre = "Carlos", activo=false))
}
fun crearUsuario(
nombre: String,
edad: Int=18,
rol: String = "viewer",
activo: Boolean = true
): String{
    return "Usuario creado para el sacramiento: [$nombre, edad=$edad, rol=$rol, activo=$activo]"
}