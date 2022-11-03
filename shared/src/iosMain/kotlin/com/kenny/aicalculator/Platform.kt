package com.kenny.aicalculator

import com.kenny.aicalculator.domain.Test
import platform.UIKit.UIDevice

class IOSPlatform: Platform {
    override val name: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion + Test().str
}

actual fun getPlatform(): Platform = IOSPlatform()