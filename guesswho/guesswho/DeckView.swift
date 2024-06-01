//
//  DeckView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct DeckView: View {
    var body: some View {
        Image("usCover")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .blue.opacity(0.5), radius: 0, x: 0, y:8)
            .shadow(radius: 3, x: 0, y:5)
            .overlay(
                ZStack {
                    LinearGradient(colors: [.white.opacity(0.3), .clear], startPoint: .top, endPoint: .center)
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.blue, lineWidth: 5)
                        
                }
            ).shadow(radius: 2)
    }
}

#Preview {
    DeckView()
}
