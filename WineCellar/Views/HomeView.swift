//
//  HomeView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 2/27/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            
                LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(wineBottles.startIndex..<wineBottles.count, id: \.self) { i in
                            WineCard(wineBottle: wineBottles[i])
                        }
                    } header: {
                        GeometryReader { geo in
                            ZStack {
                                Rectangle()
                                    .fill(.white)
                                    .opacity(0.98)
                                    .shadow(radius: 1)
                                HStack {
                                    Spacer()
                                        .frame(width: 25)
                                    Image("ProfilePicture")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 55)
                                        .border(.black)
                                        .clipShape(Circle())                                        
                                    Spacer()
                                    Text("Vineyard")
                                        .font(.system(size: 40, weight: .medium, design: .serif))
                                        .underline()
                                        .foregroundColor(Color("AccentColor"))
                                    Spacer()
                                    Image(systemName: "line.3.horizontal")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 30, height: 15)                                        
                                    Spacer()
                                        .frame(width: 25)
                                }
                                .padding(.bottom, 10.0)
                                .frame(width: geo.size.width, height: geo.size.height, alignment: .bottom)
                            }
                            .offset(y: -geo.frame(in: .global).origin.y) // keeps it fixed at top
                        }
                        .frame(height: 115)
                    }
                }
        })
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
