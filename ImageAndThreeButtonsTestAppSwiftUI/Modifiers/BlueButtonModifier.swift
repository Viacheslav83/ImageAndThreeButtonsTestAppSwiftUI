//
//  BlueButtonModifier.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 15.02.2024.
//

import SwiftUI

struct BlueButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 56)
            .foregroundColor(.white)
            .background(
                Color.blue
            )
            .cornerRadius(18)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(.indigo, lineWidth: 4)
            )
        
    }
}
