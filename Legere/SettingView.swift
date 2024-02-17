//
//  SettingView.swift
//  Legere
//
//  Created by Martin Wong on 17/2/2024.
//

import SwiftUI

struct SettingView: View {
    
    @State private var searchText = ""
    @State private var searchIsActive = false
    
    var body: some View {
            
            NavigationStack{
                
                
                
                Form {
                    
                    Section(header: Text("General")){
                        
                        NavigationLink("Language"){
                            Text("Chinese")
                            Text("English")
                        }
                        NavigationLink("Language"){
                            Text("Chinese")
                        }
                        
                    }
                    
                    Section(){
                        NavigationLink("About"){
                            Text("by Martin Wong")
                                .font(.caption2)
                                .opacity(0.4)
                            Text("Version 1.0.0")
                                .font(.caption2)
                                .opacity(0.4)
                        }
                    }
                    
                }.navigationTitle("Settings")
                
                
                
            }
            .searchable(text: $searchText)
            
            
            
    }
}


struct LanguageView: View{
    var body: some View {
        Text("Chinese")
    }
}

#Preview {
    SettingView()
}
