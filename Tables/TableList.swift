//
//  TableList.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI

struct TableList: View {
    let characters:[Character] = Character.allCharacters
    var body: some View {
        NavigationView {
            List (characters) {
                c in CellView(character: c)
            }.navigationTitle(Text("Rick & Morty"))
        }
    }
}

struct TableList_Previews: PreviewProvider {
    static var previews: some View {
        TableList()
    }
}
