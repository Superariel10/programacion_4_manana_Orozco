// MainActivity.kt
package com.ute.compose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.MaterialTheme
import com.ute.compose.ui.material3.Paso01Suma
import com.ute.compose.ui.screens.*
import com.ute.material3.ui.screens.Paso01TextFieldScreen

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                // ◀ Componentes basicos nativos:
                //S01_SaludoScreen()
                //S02_TextScreen()
                //S03ButtonScreen()
                //S04LayoutScreen()
                //S05ModifierScreen()
                //S06EstadoScreen()
                //S07StateHoistingScreen()
                //S08BienvenidaScreen()

                // ◀ Componentes Material 3:
                //Paso01TextFieldScreen()
                //Paso01Suma()
                // Paso02_CardScreen()
                // Paso03_LazyColumnScreen()
                // Paso04_ScaffoldScreen()
                // Paso05_NavBarScreen()
                //Paso06_DialogosScreen()   // ← paso activo
            }
        }
    }
}