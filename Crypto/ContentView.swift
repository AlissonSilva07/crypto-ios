//
//  ContentView.swift
//  Crypto
//
//  Created by Liv03 on 19/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background.ignoresSafeArea()
            VStack(spacing: 16) {
                Text("Hello, world!")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.theme.tertiary)
                
                
                Button {
                    
                } label: {
                    Text("Hello, world!")
                        .bold()
                        .foregroundColor(Color.theme.tertiary)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.theme.accent)
                        .cornerRadius(.infinity)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
