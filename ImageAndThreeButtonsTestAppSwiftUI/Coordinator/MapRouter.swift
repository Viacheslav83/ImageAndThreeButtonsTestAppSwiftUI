//
//  MapRouter.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2024.
//

import SwiftUI

enum MapRouter: NavigationRouterProtocol {
   
    case main
    case description(imageName: String)
    
    var transition: NavigationTransitionStyle {
        switch self {
        case .main:
            return .push
        case .description:
            return .presentFromTop
        }
    }
    
    @ViewBuilder
    func view() -> some View {
        switch self {
        case .main:
            MainView()
        case .description(imageName: let imageName):
            ImageDescriptionView(imageName: imageName)
        }
    }
}
