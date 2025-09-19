//
//  Color.swift
//  Crypto
//
//  Created by Liv03 on 19/09/25.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let tertiary = Color("TertiaryColor")
    let textPrimary = Color("PrimaryTextColor")
    let textSecondary = Color("SecondaryTextColor")
    let stroke = Color("StrokeColor")
}
