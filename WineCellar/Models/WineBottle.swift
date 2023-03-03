//
//  WineBottle.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 3/3/23.
//

import Foundation
import SwiftUI

struct WineBottle: Hashable, Codable {
    private var id: Int
    private var wineryName: String // winery company name
    private var vintage: Int // year grapes were harvested
    private var region: String // location harvested from
    private var type: String // red, white, rosé, dessert, sparkling
    private var variety: String // pinot noir, chardonnay, etc.
    private var name: String // full name
    private var description: String
    private var price: Int
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
}
