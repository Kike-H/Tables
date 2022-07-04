//
//  Characters.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

/*
 This is a Model for any character
 This Struct is generate from a JSON file
 */

import SwiftUI

struct Character: Decodable, Identifiable {
    //Atributes
    let id: Int
    let name: String
    let age: Int
    let img: String
    
    //Characters List
    static let allCharacters: [Character] = Bundle.main.decode(file: "db")
    
    //Example of one Character
    static let sampleCharacter: Character = allCharacters[0]
    
}

/*
 Add and extension of buddle for:
    - Read a JSON File
    - Load a JSON File
    _ Decode a JSON File
 */
extension Bundle {
    func decode <T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: "json") else { // Save OutPut
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
