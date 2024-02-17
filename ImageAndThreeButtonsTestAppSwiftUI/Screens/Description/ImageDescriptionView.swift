//
//  ImageDescriptionView.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2024.
//

import SwiftUI

struct ImageDescriptionView: View {
    //MARK: - Properties
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    private let imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    coordinator.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                }) // Button
                .frame(width: 32, height: 32)
                .background(
                    Color.backgroundGray
                )
                .cornerRadius(16)
            } // HStack
            
            Spacer()
        } // VStack
        .padding()
        .background(
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: AppSizes.appHeight, alignment: .leading)
                .ignoresSafeArea()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    ImageDescriptionView(imageName: ImageNameType.panda.rawValue)
}
