//
//  WineBottle.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 3/3/23.
//

import Foundation
import SwiftUI

struct WineBottle: Hashable, Codable {
    var id: Int
    var wineryName: String // winery company name
    var vintage: Int // year grapes were harvested
    var region: String // location harvested from
    var country: String // country harvested from
    var type: String // red, white, rosé, dessert, sparkling
    var variety: String // pinot noir, chardonnay, etc.
    var name: String // full name
    var description: String
    var price: Int
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
