package com.kenny.aicalculator

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform