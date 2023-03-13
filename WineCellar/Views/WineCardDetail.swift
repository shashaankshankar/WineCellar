//
//  WineCardDetail.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 3/8/23.
//

import SwiftUI
import MapKit

struct WineCardDetail: View {
    
    let coordinates = CLLocationCoordinate2D(latitude: 42.19, longitude: 13.75)
    var wineBottle: WineBottle
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                ZStack {
                    MapSnapshotView(location: coordinates)
                        .opacity(0.5)
                    wineBottle.image
                        .resizable()
                        .interpolation(.medium)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 350, alignment: .center)
                        .shadow(radius: 5)
                }
                .frame(width: geo.size.width, height: 400)
            }
            .frame(height: 400)
            ScrollView {
                Text(wineBottle.description)
                    .frame(width: 400, alignment: .center)
                .font(.system(size: 20, weight: .regular, design: .default))
            }
        }
    }
}

struct WineCardDetail_Previews: PreviewProvider {
    static var previews: some View {
        WineCardDetail(wineBottle: wineBottles[1])
    }
}
