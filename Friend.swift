//
//  Friend.swift
//  BirthdayApp
//
//  Created by D on 7/25/25.
//

import Foundation
import SwiftData

@Model
class Friend{
    
    //this is how u declare without assigning value (initializing)
    var name: String
    var birthday: Date
    
    init(n:String, d:Date){
        name = n
        birthday = d
    }
    
    
    
}
