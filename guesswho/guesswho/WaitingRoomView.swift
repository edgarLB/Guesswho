//
//  WaitingRoomView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct WaitingRoomView: View {
    var body: some View {
        VStack {
            Text("Waiting for Players to Join...")
            Spacer()
            Text("Invite Code")
            Text("ACKPWX")
            Spacer()
            HStack {
                Image(systemName: "person.fill")
                Text("Player 1")
            }
            Spacer()
            DeckView()
                .scaleEffect(0.5)
            Spacer()
            NavigationLink(destination: GameView(), label: {
                Text("Start")
                    .font(.title)
                    .bold()
            }).buttonStyle(.borderedProminent)
//                .tint(.blue)
           
        }
    }
}

#Preview {
    WaitingRoomView()
}
