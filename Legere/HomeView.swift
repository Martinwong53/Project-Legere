//
//  HomeView.swift
//  Legere
//
//  Created by Martin Wong on 16/2/2024.
//

import SwiftUI

// Screen width.
public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}

struct HomeView: View {
    
    var body: some View {
        
        // Top title + Searching
        VStack{
            
            HStack{
                
                Spacer()
                Text("Legere")
                    .font(.title)
                    .bold()
                Spacer()
                    .overlay(
                        Image(systemName: "magnifyingglass")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.horizontal,30)
                    )
                
            }
            .frame(alignment: .top)

            Divider()
            
            // Middle Page
            
            ScrollView(.vertical){
                Text("Today's")
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack{
                        
                        Image("MassPhoto")
                            .resizable()
                            .frame(width: screenWidth/1.5, height:screenHeight/4.5, alignment: .center)
                            .cornerRadius(15)
                            .overlay(alignment: .topLeading){
                                Text("Mass Script \nSaturday after Ash Wednesday")
                                    .bold()
                                    .padding(8)
                            }
                            
                        
                        Image("ChurchPhoto")
                            .resizable()
                            .frame(width: screenWidth/1.5, height:screenHeight/4.5, alignment: .center)
                            .cornerRadius(15)
                        
                        Image("ChurchPhoto")
                            .resizable()
                            .frame(width: screenWidth/1.5, height:screenHeight/4.5, alignment: .center)
                            .cornerRadius(15)
                        
                    }
                }
                
                Text("For you")
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack{
                        
                        Image("PodcastPhoto")
                            .resizable()
                            .frame(maxWidth: screenWidth/2-19, maxHeight: screenWidth/2-19)
                            .cornerRadius(15)
                            .overlay(alignment: .bottomLeading){
                                Text("Podcast")
                                    .bold()
                                    .padding(8)
                                
                            }
                        Image("PopePhoto")
                            .resizable()
                            .frame(maxWidth: screenWidth/2-19, maxHeight: screenWidth/2-19)
                            .cornerRadius(15)
                            .overlay(alignment: .bottomLeading){
                                Text("Pope Message")
                                    .bold()
                                    .padding(8)
                                
                            }
                            
                    }
                }
                    
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
        }
         
    }
}

#Preview {
    HomeView()
}
