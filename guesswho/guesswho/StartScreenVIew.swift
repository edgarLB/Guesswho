//
//  StartScreenVIew.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct StartScreenVIew: View {
    var body: some View {
        NavigationStack {
            VStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 140)
                    .padding()
                NavigationLink(destination: PickDeckView(), label: {
                    Text("Create")
                        .font(.title)
                        .bold()
                }).buttonStyle(.borderedProminent)
                    .padding()
             
                NavigationLink(destination: JoinView(), label: {
                    Text("Join")
                        .font(.title)
                        .bold()
                }).buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    StartScreenVIew()
}
