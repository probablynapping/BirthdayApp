//
//  ContentView.swift
//  BirthdayApp
//
//  Created by D on 7/25/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query private var friends: [Friend]
    
    
    var body: some View {
        NavigationStack{
            List(friends, id: \.name){ friend in
                
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
                
            }
            .navigationTitle("Birthdays")
            
        }
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
