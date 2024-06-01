//
//  PickDeckView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct PickDeckView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Pick a Deck")
                .font(.largeTitle)
                .bold()
            Spacer()
            NavigationLink(destination: WaitingRoomView(), label: {DeckView()})
                Spacer()
            Spacer()
                
        }
    }
}

#Preview {
    PickDeckView()
}
