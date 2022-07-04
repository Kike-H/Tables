//
//  TableList.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI

struct TableList: View {
    var body: some View {
        NavigationView {
            List {
                CellView()
                CellView()
                CellView()
                CellView()
                CellView()
            }.navigationTitle(Text("Rick & Morty"))
        }
    }
}

struct TableList_Previews: PreviewProvider {
    static var previews: some View {
        TableList()
    }
}
