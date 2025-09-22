//
//  UIApplication.swift
//  Crypto
//
//  Created by Liv03 on 22/09/25.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
