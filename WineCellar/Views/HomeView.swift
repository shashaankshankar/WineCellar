//
//  HomeView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 2/27/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        WineCard(wineBottle: wineBottles[0])
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
