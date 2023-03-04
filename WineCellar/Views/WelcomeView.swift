//
//  WelcomeView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 2/20/23.
//

import SwiftUI
import AVKit

struct WelcomeView: View {
    
    @State var wineGlassPlayer = AVPlayer(url:
        Bundle.main.url(forResource: "WineGlassGIF - Transparent", withExtension: "mp4")!)
    
    @State var showingHomeView = false
    
    var body: some View {
        VStack {
            
            // MARK: Header
            
            Text("Vineyard")
                .shadow(color: .gray.opacity(0.3), radius: 10, x: 1, y: -1)
                .underline()
                .font(.system(size: 75, weight: .bold, design: .serif))
                .foregroundColor(Color("AccentColor"))
            
            // MARK: Center
            
            VideoPlayer(player: wineGlassPlayer)
                .scaledToFit()
                .frame(width: 300, height: 300)
                .disabled(true)
                .onAppear() {
                    wineGlassPlayer.isMuted = true
                    wineGlassPlayer.play()
                }
            
            // MARK: Footer
            
            Button(action: {
                goHome()
            }) {
                Text("Enter →")
                    .padding()
                    .frame(width: 200, height: 75)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color("AccentColor")]), startPoint: .trailing, endPoint: .leading))
                    .cornerRadius(40)
                    .shadow(radius: 5)
                    .foregroundColor(.white)
                    .font(.system(size: 35, weight: .medium, design: .serif))
            }

        }
        .padding()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

func goHome() {
    if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: TabBarView())
            window.makeKeyAndVisible()
    }
}
