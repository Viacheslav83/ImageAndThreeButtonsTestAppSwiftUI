//
//  MainView.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2024.
//

import SwiftUI

struct MainView: View {
    //MARK: - Properties
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    @StateObject var viewModel = MainViewModel()
    
    @State var isPresentedDescriptionView: Bool = false
    
    var body: some View {
        VStack {
            Image(viewModel.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 150, alignment: .leading)
                .frame(height: AppSizes.appHeight * 0.3)
                .clipped()
            
            HStack(spacing: AppSizes.trailingLeading) {
                Button(action: {
                    viewModel.isLockedButton.toggle()
                }, label: {
                    Text(viewModel.isLockedButton ? AppConstances.unlock : AppConstances.lock)
                }) // Left Button
                .frame(minWidth: 0, maxWidth: .infinity)
                .modifier(BlueButtonModifier())
                
                Button(action: {
                    presentDetailScreen()
                }, label: {
                    Text(AppConstances.openFrom)
                }) // Right Button
                .frame(minWidth: 0, maxWidth: .infinity)
                .modifier(BlueButtonModifier())
                .disabled(viewModel.isLockedButton)
                .opacity(viewModel.isLockedButton ? 0.6 : 1)
            } // HStack
            .frame(minWidth: 0, maxWidth: .infinity)
            
            Spacer()
            
            Button(action: {
                presentDetailScreen()
            }, label: {
                Text(AppConstances.openFull)
            }) // Bottom Button
            .frame(minWidth: AppSizes.appWidth - 2 * AppSizes.trailingLeading, maxWidth: .infinity)
            .modifier(BlueButtonModifier())
            
        } // VStack
        .padding(AppSizes.trailingLeading)
        .background(
            Color.backgroundGray
                .ignoresSafeArea()
        )
        .onAppear(perform: {
            viewModel.downloadImage()
        })
    }
    
    private func presentDetailScreen() {
        coordinator.show(.description(imageName: viewModel.imageName))
    }
}

#Preview {
    MainView()
}
