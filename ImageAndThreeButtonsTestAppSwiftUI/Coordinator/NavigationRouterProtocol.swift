//
//  NavigationRouterProtocol.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2024.
//

import SwiftUI

protocol NavigationRouterProtocol {
    
    associatedtype V: View

    var transition: NavigationTransitionStyle { get }
    
    /// Creates and returns a view of assosiated type
    ///
    @ViewBuilder
    func view() -> V
}
