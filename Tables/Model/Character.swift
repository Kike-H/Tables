//
//  Characters.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI

struct Character: Decodable, Identifiable {
    let id: Int
    let name: String
    let age: Int
    let img: String
    
    static let allCharacters: [Character] = Bundle.main.decode(file: "db")
    static let sampleCharacter: Character = allCharacters[0]
    
}

extension Bundle {
    func decode <T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: "json") else {
            fatalError("Could not find \(file) in the project")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) in the project")
        }
        guard let jsonDecoded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Could not decode \(file) in the project")
        }
        return jsonDecoded
    }
    
    
}
