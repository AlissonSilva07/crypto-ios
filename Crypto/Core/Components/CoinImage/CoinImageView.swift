//
//  CoinImageView.swift
//  Crypto
//
//  Created by Liv03 on 22/09/25.
//

import SwiftUI

struct CoinImageView: View {
    @StateObject var vm: CoinImageViewModel
    
    init(coin: Coin) {
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading  {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.textSecondary)
            }
        }
    }
}



struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CoinImageView(coin: dev.coin)
                .padding()
                .previewLayout(.sizeThatFits)
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}
