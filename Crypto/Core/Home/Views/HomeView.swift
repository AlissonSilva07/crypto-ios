//
//  HomeView.swift
//  Crypto
//
//  Created by Liv03 on 19/09/25.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        CircleButton(iconName: showPortfolio ? "plus" : "info")
                    }
                    Spacer()
                    Text(showPortfolio ? "Portfolio" : "Live Prices")
                        .font(.headline)
                        .bold()
                        .foregroundColor(Color.theme.textPrimary)
                    Spacer()
                    Button {
                        showPortfolio.toggle()
                    } label: {
                        ColoredCircleButton(iconName: "chevron.right")
                            .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                    }
                }
                .padding(.horizontal, 16)
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
    }
    .navigationBarHidden(true)
}
