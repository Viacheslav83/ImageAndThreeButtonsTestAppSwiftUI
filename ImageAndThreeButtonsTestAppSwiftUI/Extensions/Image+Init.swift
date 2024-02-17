//
//  Image+Init.swift
//  ImageAndThreeButtonsTestAppSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2024.
//

import SwiftUI

extension Image {
    init(imageType: ImageNameType) {
        self.init(imageType.rawValue)
    }
}
