//
//  HomeView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 2/27/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            WineCard(wineBottle: wineBottles[0])
            WineCard(wineBottle: wineBottles[1])
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
