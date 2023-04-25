//
//  ContentView.swift
//  CardGameVersion2
//
//  Created by Robert Nochez on 4/17/23.
//

import SwiftUI

struct ContentView: View {
        
        private var twoColumnGrid = [GridItem(.flexible()),
             GridItem(.flexible())]
    
        @State var cards = createCardList().shuffled()
    
        @State var MatchedCards = [Card]()
    
        @State var UserChoices = [Card]()
    
    
    var body: some View {
        
        let Score = MatchedCards.count/2
        
        GeometryReader{geo in
            VStack{
                Text("Forest Finder")
                    .font(.title)
                
                Text("Score: \(Score)").font(.title2)
                    
                LazyVGrid(columns: twoColumnGrid, spacing: 10){
                    ForEach(cards){card in
                        CardView(card: card,
                                 width:Int(geo.size.width/2-10),
                                 MatchedCards: $MatchedCards,
                                 UserChoices: $UserChoices)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
