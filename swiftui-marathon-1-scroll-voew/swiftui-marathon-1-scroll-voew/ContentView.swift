//
//  ContentView.swift
//  swiftui-marathon-1-scroll-voew
//
//  Created by Vladislav Shakhray on 01/10/2023.
//

import SwiftUI

struct ContentView: View {
    let rectangleSize: CGFloat = 50
    
    var body: some View {
        TabView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(Array(0...100), id: \.self) { index in
                        HStack {
                            Text("\(index)")
                            Spacer()
                        }
                    }
                }
            }
            .safeAreaInset(edge: .bottom, spacing: 0) {
                Rectangle()
                    .fill(.red)
                    .frame(height: 50.0)
                    .opacity(0.5)
            }
            .tabItem { Label("Tab 1", systemImage: "star.fill") }
        }

    }
}


#Preview {
    ContentView()
}
