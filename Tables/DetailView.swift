//
//  DetailView.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI

struct DetailView: View {
    let character: Character
    var body: some View {
        NavigationView {
            VStack {
                Image(character.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100)
                    .clipShape(Circle())
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
