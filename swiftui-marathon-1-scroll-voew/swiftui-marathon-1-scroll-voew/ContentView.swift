//
//  ContentView.swift
//  swiftui-marathon-1-scroll-voew
//
//  Created by Vladislav Shakhray on 01/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack(alignment: .leading, spacing: 0.0) {
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(Array(0...100), id: \.self) { index in
                            HStack {
                                Text("\(index)")
                                Spacer()
                            }
                        }
                    }
                }
                Rectangle()
                    .fill(.red)
                    .frame(height: 50)
            }
            
            .tabItem { Label("Tab 1", systemImage: "star.fill") }
        }
    }
}

#Preview {
    ContentView()
}
