//
//  TableList.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI


/*
 This file generate a list
 of Characters like a Table
 */

struct TableList: View {
    let characters:[Character] = Character.allCharacters
    var body: some View {
        NavigationView { // Naviagtion for screens
            List (characters) {
                c in CellView(character: c) // For each character generate a CellView
            }.navigationTitle(Text("Rick & Morty")) // Title of the list
        }
    }
}

struct TableList_Previews: PreviewProvider {
    static var previews: some View {
        TableList()
    }
}
