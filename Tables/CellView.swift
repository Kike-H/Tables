//
//  CellView.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

/*
 This file make a view for a cell
 */

import SwiftUI

struct CellView: View {
    let character: Character
    var body: some View {
        NavigationLink(destination: DetailView(character: character)) {
        HStack {
            Image("\(character.img)") // Image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 65)
                .clipShape(Circle())
            Spacer() // Make a space between Image and text
            Text("\(character.name)").font(.title)
            Spacer() // Make a space betwwen Text and Image
            Image(systemName: "chevron.right") // Icon >
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 15)

            
        }
        .padding(13) // Make a padding
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        let character = Character.sampleCharacter
        CellView(character: character).previewLayout(.fixed(width: 400, height: 60))
    }
}
