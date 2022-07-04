//
//  CellView.swift
//  Tables
//
//  Created by Kike Hernandez  on 03/07/22.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        HStack {
            Image("Morty")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 65)
                .clipShape(Circle())
            Spacer()
            Text("Morty").font(.title)
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 15)

            
        }
        .padding(13.0)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView().previewLayout(.fixed(width: 400, height: 60))
    }
}
