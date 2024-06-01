//
//  GameView.swift
//  guesswho
//
//  Created by Edgar Rodriguez on 5/31/24.
//

import SwiftUI

struct GameView: View {
    @State var myTurn : Bool = true
    @State var isGuessing : Bool = false
    var body: some View {
        
        ZStack {
            VStack(spacing: 0){
                ZStack{
                    HStack{
                                   VStack(spacing: 0){
                                       Text("Opponent")
                                           .font(.caption2)
                                       Text("20")
                                           .font(.caption)
                                           .bold()
                                   }.padding(5)
                                       .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                   .background(Color(Color.blue.opacity(0.2)))
                                   .cornerRadius(5)
                                   .padding(.leading)
                                   
                                   
                                       
                                   Spacer()
                                   Button{
                                   } label: {
                                       Text("X")
                                           .bold()
                                   }.buttonStyle(.bordered)
                                       .tint(.red)
                                       .padding(.trailing)
                               }
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 49)
                }
                Spacer()
                if(isGuessing){
                    Text("- Choose a Single Card -")
                }
                    
                

                GridView()
                HStack{
                    Button{
                        isGuessing.toggle()
                    } label: {
                        Text("Guess")
                            .font(.title2)
                            .bold()
                    }.buttonStyle(.borderedProminent)
                    
                    Button{
                    } label: {
                        Text("Done")
                            .font(.title2)
                            
                            .bold()
                    }.buttonStyle(.borderedProminent)
                }.padding(.horizontal)
            }.blur(radius: !myTurn ? 5 : 0)
            if(!myTurn){
                Rectangle()
                    .foregroundColor(Color(Color.blue.opacity(0.6)))
                    .ignoresSafeArea()
                VStack{
                    Text("Oponent's Turn")
                    
                        .foregroundStyle(.white)
                        .shadow(color: .black , radius: 0, x: 0, y: 4)
                        .font(.largeTitle)
                        .bold()
                }
            }
           
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    GameView()
}
