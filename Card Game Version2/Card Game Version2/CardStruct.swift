//
//  CardStruct.swift
//  CardGameVersion2
//
//  Created by Robert Nochez on 4/17/23.
//

import Foundation
import SwiftUI

class Card:Identifiable, ObservableObject {
    
    var id = UUID()
    
    @Published var flipped = false
    
    @Published var matched = false
    
    var text:String
    
    init(text:String){
        self.text = text
    }
    
    func flip(){
        self.flipped.toggle()
    }
}

let cardValues:[String] = ["1", "2", "3", "4"]

func createCardList() -> [Card] {
    var cardList = [Card]()
    
    for cardValue in cardValues {
        cardList.append(Card(text: cardValue))
        cardList.append(Card(text: cardValue))
    }
    
    return cardList
}
