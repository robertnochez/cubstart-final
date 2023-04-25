//
//  CardView.swift
//  CardGameVersion2
//
//  Created by Robert Nochez on 4/17/23.
//

import SwiftUI

struct CardView: View {
    
    @ObservedObject var card:Card
    
    let width:Int
    
    @Binding var MatchedCards:[Card]
    
    @Binding var UserChoices:[Card]
    
    var body: some View {
        if card.flipped || MatchedCards.contains(where: {$0.id == card.id}){
            Text(card.text)
                .font(.system(size: 50))
                .padding()
                .frame(width: CGFloat(width), height: CGFloat(150))
                .background(Color(.green))
                .cornerRadius(10)
        } else {
            Text("?")
                .font(.system(size: 50))
                .padding()
                .frame(width: CGFloat(width), height: CGFloat(150))
                .background(Color(.green))
                .cornerRadius(10)
                .onTapGesture {
                    if UserChoices.count == 0 {
                        card.flip()
                        UserChoices.append(card)
                    } else if UserChoices.count == 1 {
                        card.flip()
                        UserChoices.append(card)
                        withAnimation(Animation.linear.delay(1)){
                            for thisCard in UserChoices{
                                thisCard.flip()
                            }
                        }
                        checkMatch()
                    }
                }
        }
    }
    
    func checkMatch(){
        if UserChoices[0].text == UserChoices[1].text {
            MatchedCards.append(UserChoices[0])
            MatchedCards.append(UserChoices[1])
        }
        UserChoices.removeAll()
    }
}


