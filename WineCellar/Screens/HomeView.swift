//
//  HomeView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 2/21/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            // MARK: Content
            
            Spacer()
            
            ZStack(alignment: .top) {
                NavigationBar()
                    .padding(.horizontal, 22)
                    .background(NavigationBarShape())
                
                Button(action: {
                    
                }) {
                    Image("Wine Glass Icon")
                        .renderingMode(.original)
                        .padding(15)
                }.background(.yellow)
                .clipShape(Circle())
                .shadow(radius: 4)
                .offset(y: -35)
            }
        }.background(Color("HomeBackground"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct NavigationBarShape: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: -(UIScreen.main.bounds.height)))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: -(UIScreen.main.bounds.height)))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            path.addArc(center: CGPoint(x: (UIScreen.main.bounds.width/2), y: 55), radius: 32, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))
        }.fill(.white)
        .shadow(radius: 3)
        //.overlay(Rectangle().fill(.white).padding([.bottom], 0))
        //.foregroundColor(.black)
        .rotationEffect(.init(degrees: 180))
    }
}

struct NavigationBar: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image("Home Page Icon")
            }
            
            Spacer(minLength: 12)
            
            Button(action: {
                
            }) {
                Image("Search Icon")
            }
            
            Spacer().frame(width: 120)
            
            Button(action: {
                
            }) {
                Image("Home Page Icon")
            }
            
            Spacer(minLength: 12)
            
            Button(action: {
                
            }) {
                Image("Search Icon")
            }
        }
    }
}
