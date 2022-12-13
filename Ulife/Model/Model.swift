//
//  Model.swift
//  Ulife
//
//  Created by Henrique Marques on 07/12/22.
//

import Foundation

struct Mock {
    let name: String
    let image: String
    let content1: String
    let content2: String
    
    init(name: String, image: String, content1: String, content2: String) {
        self.name = name
        self.image = image
        self.content1 = content1
        self.content2 = content2
    }
}

struct ConfigMock {
    let name: String
    let emoji: String
    
    init(name: String, emoji: String) {
        self.name = name
        self.emoji = emoji
    }
}

struct MockSobreApp {
    let name: String
    let emoji: String
    
    init(name: String, emoji: String) {
        self.name = name
        self.emoji = emoji
    }
}

struct ProfileMock {
    let name: String
    let description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
