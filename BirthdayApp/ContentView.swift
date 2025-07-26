//
//  ContentView.swift
//  BirthdayApp
//
//  Created by D on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var friends: [Friend] = [
        Friend(n: "Arushi", d: Date(timeIntervalSince1970: 0)),
        Friend(n: "Deanna", d: .now)
    ]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
