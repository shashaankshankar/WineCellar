//
//  WineCard.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 3/3/23.
//

import SwiftUI

struct WineCard: View {
    var wineBottle: WineBottle
    var cardWidth: CGFloat = 350
    var cardHeight: CGFloat = 300
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("WineCardDarkBackground"))
                .frame(width: cardWidth, height: cardHeight)
                .cornerRadius(25)
            Rectangle()
                .fill(Color("WineCardLightBackground"))
                .frame(width: (cardWidth - 10), height: (cardHeight - 10))
                .cornerRadius(20)
                .shadow(radius: 1)
            
            HStack {
                Spacer()
                                
                /* [!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!]
                 * Need to work on what happens if image is not the right size for '.fill'
                 */
                wineBottle.image
                    .resizable()
                    .interpolation(.medium)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 225, alignment: .center)
                    //.border(.green)
                    .shadow(radius: 5)
                 
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(Color("WineCardLighterBackground"))
                        .frame(width: 210, height: cardHeight - 30)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                    VStack {
                        Text(wineBottle.type + " Wine")
                            .frame(width: 200, alignment: .trailing)
                            //.border(.green)
                            .font(.system(size: 14, weight: .light, design: .rounded))
                        Text(wineBottle.wineryName)
                            .frame(width: 200, alignment: .trailing)
                            //.border(.green)
                            .font(.system(size: 16, weight: .regular, design: .serif))
                        Text(String(wineBottle.vintage) + " - " + wineBottle.variety)
                            .frame(width: 200, alignment: .trailing)
                            //.border(.green)
                            .font(.system(size: 15, weight: .light, design: .default))
                        Spacer()
                        Text(wineBottle.description)
                            .frame(width: 200, alignment: .center)
                            //.border(.green)
                            .font(.system(size: 14, weight: .thin, design: .default))
                            .italic()
                        Spacer()
                        Text("$" + String(wineBottle.price))
                            .frame(width: 200, alignment: .trailing)
                            //.border(.green)
                            .font(.system(size: 17, weight: .semibold, design: .serif))
                    }
                    .padding(.vertical, 10.0)
                    .frame(width: 200, height: 250)
                    
                    //.border(.red)
                }
                
                Spacer()
            }
            .frame(width: (cardWidth - 50), height: (cardHeight - 50))
        }
    }
}

struct WineCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WineCard(wineBottle: wineBottles[0])
            WineCard(wineBottle: wineBottles[1])
            WineCard(wineBottle: wineBottles[2])
        }
    }
}
