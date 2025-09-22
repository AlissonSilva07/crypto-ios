//
//  SearchBarView.swift
//  Crypto
//
//  Created by Liv03 on 22/09/25.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.isEmpty ? Color.theme.textSecondary : Color.theme.textPrimary)
            TextField("Search by name or symbol", text: $searchText)
                .foregroundColor(Color.theme.textPrimary)
                .disableAutocorrection(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundStyle(Color.theme.textPrimary)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        },
                    alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.theme.background)
                .stroke(Color.theme.stroke, lineWidth: 1)
        )
        .padding()
    }
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
