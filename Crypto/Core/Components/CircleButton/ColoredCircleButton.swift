//
//  CircleButton.swift
//  Crypto
//
//  Created by Liv03 on 19/09/25.
//

import SwiftUI

struct ColoredCircleButton: View {
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.tertiary)
            .frame(width: 48, height: 48)
            .background(
                Circle()
                    .foregroundColor(Color.theme.accent)
            )
            .cornerRadius(.infinity)
    }
}

#Preview {
    ColoredCircleButton(iconName: "info")
}
