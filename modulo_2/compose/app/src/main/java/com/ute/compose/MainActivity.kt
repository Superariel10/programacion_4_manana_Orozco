// MainActivity.kt
package com.ute.compose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.MaterialTheme
import com.ute.compose.ui.material3.Paso01Compra
import com.ute.compose.ui.material3.Paso01Suma
import com.ute.compose.ui.material3.Paso02CardScreen
import com.ute.compose.ui.material3.Paso03LazyColumnScreen
import com.ute.compose.ui.material3.Paso04ScaffoldScreen
import com.ute.compose.ui.material3.Paso05NavBarScreen
import com.ute.compose.ui.material3.Paso06DialogosScreen
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
                //Paso01Compra()
                //Paso02CardScreen()
                //Paso03LazyColumnScreen()
                //Paso04ScaffoldScreen()
                //Paso05NavBarScreen()
                Paso06DialogosScreen()   // ← paso activo
            }
        }
    }
}