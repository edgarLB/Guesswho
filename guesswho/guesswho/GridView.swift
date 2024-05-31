//
//  GridView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

let imageNames = ["adrian", "angela", "aracely", "bri", "carlos", "danny", "david", "edgar", "eric", "frank", "issac", "ivette", "jennifer", "karla", "kim", "luis", "mariah", "michelle", "sarah", "valeriee"]
let cards = imageNames.map { CardStruct(name: $0.capitalized, filename: $0) }

struct GridView: View {
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(cards) { card in 
                        FlippedCardView(presenter: FlipCardPresenter(), cardStruct: card)
                        
                    }
                }
                .padding()
    }
}

#Preview {
    GridView()
}
