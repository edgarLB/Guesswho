//
//  JoinView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct JoinView: View {
    @State var name: String = ""
    @State var code: String = ""
    var body: some View {
        VStack {
            Text("Name")
            TextField("Player 2",text: $name)
            Text("Enter Invite Code")
            TextField("code",text: $code)
            NavigationLink(destination: GameView(), label: {Text("Join")
                    .font(.title)
                    .bold()
            }).buttonStyle(.borderedProminent)
        }.navigationTitle("Join a Game")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    JoinView()
}
