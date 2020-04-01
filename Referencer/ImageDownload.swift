//
//  ImageDownload.swift
//  Referencer
//
//  Created by Mitchell Gorham on 1/4/20.
//  Copyright © 2020 Mitchell Gorham. All rights reserved.
//

import SwiftUI

// Takes the received string and attempts to convert it into an image, should it fail to do so, a default image is provided

func imageDownload (_ input: String) -> Image {
    guard let imageURL = URL(string: input) else {
        return (Image("null"))
    }
    guard let imageData = try? Data(contentsOf: imageURL) else {
        return (Image("null"))
    }
    guard let uiImage = UIImage(data: imageData) else {
        return (Image("null"))
    }
    let downloadedImage = Image(uiImage: uiImage)
    return downloadedImage
}
