//
//  FlippedCardView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct FlippedCardView: View {
    @ObservedObject var presenter: FlipCardPresenter
    var cardStruct: CardStruct
    
    var body: some View {
        CardView(isFlipped: presenter.isFlipped, cardStruct: cardStruct)
//            .frame(width: 90)
            .onTapGesture {
                presenter.flipButtonTapped()
                
            }
            .rotation3DEffect(.degrees(presenter.isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                        .animation(.default, value: presenter.isFlipped)
    }
}

protocol FlipCardPresenterProtocol: ObservableObject {
    var isFlipped: Bool { get }
    func flipButtonTapped()
}

class FlipCardPresenter: FlipCardPresenterProtocol {
    @Published var isFlipped: Bool = false

    func flipButtonTapped() {
        isFlipped.toggle()
    }
}

//#Preview {
//    FlippedCardView( presenter: FlipCardPresenter())
//}
