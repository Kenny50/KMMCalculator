package com.kenny.aicalculator.android.presentation

import androidx.compose.runtime.Composable
import com.kenny.aicalculator.domain.CalculatorAction

data class CalculatorUiAction (
    val text: String?,
    val highlightLevel: HighlightLevel,
    val action: CalculatorAction,
    val content: @Composable () -> Unit = {}
)

sealed interface HighlightLevel {
    object Neutral : HighlightLevel
    object SemiHighlighted : HighlightLevel
    object Highlighted : HighlightLevel
    object StrongHighlighted : HighlightLevel
}