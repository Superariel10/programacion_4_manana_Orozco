package com.ute.compose.ui.material3

import androidx.compose.animation.defaultDecayAnimationSpec
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp

@Composable
fun Paso01Compra() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
            .verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        Text("Paso 1 · TextField y OutlinedTextField",
            style = MaterialTheme.typography.titleMedium)
        HorizontalDivider()
        CompraProducto()
    }
}


// ── Demo 2: formulario con validación completa ───────────────────────────────
@Composable
private fun CompraProducto() {
    var nombreProducto     by remember { mutableStateOf("") }
    var cantidad      by remember { mutableStateOf("0") }
    var precio      by remember { mutableStateOf("0") }
    var subtotal      by remember { mutableStateOf("0") }
    var descuento      by remember { mutableStateOf("0") }
    var total      by remember { mutableStateOf("0") }
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text("Compra de producto",
            style = MaterialTheme.typography.labelLarge,
            color = MaterialTheme.colorScheme.primary)

        // Nombre del Producto
        OutlinedTextField(
            value           = nombreProducto,
            onValueChange   = { nombreProducto = it },
            label           = { Text("Nombre de Producto") },
            leadingIcon     = { Icon(Icons.Default.Person, contentDescription = null) },
            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
            singleLine      = true,
            modifier        = Modifier.fillMaxWidth()
        )
        // Cantidad
        OutlinedTextField(
            value           = cantidad,
            onValueChange   = { cantidad = it },
            label           = { Text("Cantidad") },
            leadingIcon     = { Icon(Icons.Default.Person, contentDescription = null) },
            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
            singleLine      = true,
            modifier        = Modifier.fillMaxWidth()
        )

        // Precio Unitario
        OutlinedTextField(
            value           = precio,
            onValueChange   = { precio = it },
            label           = { Text("Precio Unitario") },
            leadingIcon     = { Icon(Icons.Default.Person, contentDescription = null) },
            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
            singleLine      = true,
            modifier        = Modifier.fillMaxWidth()
        )

        Button(
            onClick  = {
                val precioDouble=precio.toDoubleOrNull()?:0.0
                val cantidadDouble=cantidad.toDoubleOrNull()?:0.0
                val subtotalDouble=(precioDouble*cantidadDouble)
                var porcentaje = 0.0;
                if (subtotalDouble>50){
                    porcentaje = 0.1
                } else if (subtotalDouble>20){
                    porcentaje = 0.05
                }
                var descuentoDouble = subtotalDouble*porcentaje
                var totalDouble = subtotalDouble - descuentoDouble
                subtotal = subtotalDouble.toString()
                descuento = descuentoDouble.toString()
                total = totalDouble.toString()
                },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Calcular")
        }
        Text(text="Nombre del producto:  $nombreProducto")
        Text(text="Subtotal:  $subtotal")
        Text(text="Descuento Aplicado: $descuento")
        Text(text="Total a Pagar: $total")
    }
}

@Preview(showBackground = true)
@Composable
fun Paso01TiendaPreview() {
    MaterialTheme { Paso01Compra() }
}