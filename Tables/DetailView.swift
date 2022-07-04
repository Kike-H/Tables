//
//  DetailView.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

/*
 This file is a view for show the details of a character
*/

import SwiftUI

struct DetailView: View {
    let character: Character
    var body: some View {
        NavigationView {
            VStack {
                Image(character.img) // Image principal
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100)
                    .clipShape(Circle())
                // Data Character
                Text("\(character.name)").font(.title)
                Text("ID: \(character.id)").font(.title2)
                Text("Age: \(character.age)").font(.title3)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(character: Character.sampleCharacter)
    }
}
