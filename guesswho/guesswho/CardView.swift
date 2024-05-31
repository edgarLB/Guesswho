//
//  CardView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct CardView: View {
    var isFlipped: Bool
    var cardStruct: CardStruct
    
    var body: some View {
        
        
        VStack (spacing: 0){
            if isFlipped {
                ZStack{
                    Rectangle()
                        .foregroundColor(.blue)
                        .padding(0)
                    Text("?")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .scaleEffect(CGSize(width: -1, height: 1))
                        .padding(0)
                        
                }.padding(0)
                
                              
                               
            } else {
                
                Image(cardStruct.filename)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 90)
                        .clipped()
                    Rectangle()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(height: 3)
                Text(cardStruct.filename.capitalized)
                        .font(.caption)
                        .bold()
                        .padding(3)
                        .background()
                }
            
                
        }
        .frame(width: 80)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.blue, lineWidth: 3)
        )
        
    }
}

//#Preview {
//    CardView(isFlipped: false)
//}
