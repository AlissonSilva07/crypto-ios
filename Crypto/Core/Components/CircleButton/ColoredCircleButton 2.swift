//
//  CircleButton.swift
//  Crypto
//
//  Created by Liv03 on 19/09/25.
//

import SwiftUI

struct CircleButton: View {
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .foregroundColor(Color.theme.textPrimary)
            .frame(width: 48, height: 48)
            .background(
                Circle()
                    .stroke(Color.theme.stroke, lineWidth: 1)
            )
    }
}

#Preview {
    CircleButton(iconName: "info")
}
