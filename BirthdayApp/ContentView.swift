//
//  ContentView.swift
//  BirthdayApp
//
//  Created by D on 7/25/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var friends: [Friend] = [
        Friend(n: "Elton Lin", d: .now),
        Friend(n: "Jenny Court", d: Date(timeIntervalSince1970: 0))
    ]
//    @Environment(\.modelContext) private var context
    
    @State private var newName = ""
    @State private var newBirthday = Date.now
    
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
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newBirthday, in: Date.distantPast...Date.now, displayedComponents: .date) {
                                TextField("Name", text: $newName)
                                    .textFieldStyle(.roundedBorder)
                            }
                    Button("Save") {
                                let newFriend = Friend(n: newName, d: newBirthday)
                                friends.append(newFriend)
                            }
                            .bold()
                    }
                    .padding()
                    .background(.bar)
                    
            }
            
        }
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
