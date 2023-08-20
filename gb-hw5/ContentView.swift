//
//  ContentView.swift
//  gb-hw5
//
//  Created by Юлия Дебелова on 20.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                
                NavigationLink("News", destination: {
                    NewsView()
                }).navigationTitle("Hello")
                .padding(.top, 5.0)
        }
        .padding(.horizontal, 0.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
