//
//  SearchView.swift
//  WineCellar
//
//  Created by Shashaank Shankar on 3/8/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    @State private var isEditing = false
    
    var body: some View {
        
        Section {
            
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
                        TextField("Search Vineyard", text: $searchText)
                            .padding(5)
                            .padding(.horizontal, 5)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 10)
                            .onTapGesture {
                                self.isEditing = true
                            }
                        
                        
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
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
