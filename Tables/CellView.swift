//
//  CellView.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI

struct CellView: View {
    let character: Character
    var body: some View {
        HStack {
            Image("\(character.img)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 65)
                .clipShape(Circle())
            Spacer()
            Text("\(character.name)").font(.title)
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 15)

            
        }
        .padding(13)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        let character = Character.sampleCharacter
        CellView(character: character).previewLayout(.fixed(width: 400, height: 60))
    }
}
