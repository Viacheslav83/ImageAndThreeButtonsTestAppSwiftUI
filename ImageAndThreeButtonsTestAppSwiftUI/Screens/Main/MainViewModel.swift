//
//  MainViewModel.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2024.
//

import SwiftUI

protocol MainViewModelProtocol: AnyObject {
    init(imageName: String)
    
    var imageName: String { get }
    
}

final class MainViewModel: ObservableObject {
    
    @Published var imageName: String = ""
    @Published var isLockedButton: Bool = false
    
    init() {
    }
    
    func downloadImage() {
        self.imageName = ImageNameType.panda.rawValue
    }
}
