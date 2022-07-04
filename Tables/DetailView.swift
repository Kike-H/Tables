//
//  DetailView.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Morty")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 100)
                    .clipShape(Circle())
                Text("Morty Smith").font(.title)
                Text("ID: 1").font(.title2)
                Text("Age: 16").font(.title3)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
