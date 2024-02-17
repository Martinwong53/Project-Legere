//
//  ContentView.swift
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

struct ContentView: View {
    
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
                            .safeAreaPadding(.horizontal,30)
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
                                    .safeAreaPadding(8)
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
                            .frame(width: 200, height:200, alignment: .center)
                            .cornerRadius(15)
                            .overlay(alignment: .bottomLeading){
                                Text("Podcast")
                                    .bold()
                                    .safeAreaPadding(8)
                                
                            }
                        Image("PopePhoto")
                            .resizable()
                            .frame(width: 200, height:200, alignment: .center)
                            .cornerRadius(15)
                            .overlay(alignment: .bottomLeading){
                                Text("Pope Message")
                                    .bold()
                                    .safeAreaPadding(8)
                                
                            }
                            
                        
                        
                        
                    }
                }
                    
            }
            .safeAreaPadding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
        }
        
        Text("by Martin Wong")
            .font(.caption2)
            .opacity(0.4)
        Text("Version 1.0.0")
            .font(.caption2)
            .opacity(0.4)
        Divider()
        
        // Bottom
        HStack{
            
            Spacer()
            VStack{
                Image(systemName: "house")
                Text("Home")
                    .font(.caption)
            }
                
            Spacer()
            VStack{
                Image(systemName: "text.book.closed")
                Text("Reading")
                    .font(.caption)
            }
            
            Spacer()
            VStack{
                Image(systemName: "calendar")
                Text("Calendar")
                    .font(.caption)
            }
                
            Spacer()
            VStack{
                Image(systemName: "newspaper")
                Text("News")
                    .font(.caption)
            }
                
            Spacer()
            VStack{
                Image(systemName: "gear")
                Text("Setting")
                    .font(.caption)
            
            }
            Spacer()
            
        }.safeAreaPadding(.vertical)
        
        
    }
}
    
#Preview {
    ContentView()
}
