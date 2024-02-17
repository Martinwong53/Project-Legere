//
//  SettingView.swift
//  Legere
//
//  Created by Martin Wong on 17/2/2024.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        VStack{
            Spacer()
            Text("by Martin Wong")
                .font(.caption2)
                .opacity(0.4)
            Text("Version 1.0.0")
                .font(.caption2)
                .opacity(0.4)
        }.padding()
        
    }
}

#Preview {
    SettingView()
}
