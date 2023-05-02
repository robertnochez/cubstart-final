//
//  StartMenuView.swift
//  CardGameFinal
//
//  Created by Robert Nochez on 5/1/23.
//

import SwiftUI

struct StartMenuView: View {
    
    @State private var isActive = false
    
    var body: some View {
        if (isActive) {
            ContentView()
        } else {
            VStack {
                Text("Forest Finder")
                    .font(.title)
                    .bold()
                
                Button(action: {
                    self.isActive.toggle()
                }) {
                    Text("Start Game")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 50)
                }
                .background(.green)
                .cornerRadius(10)
                .padding(.top, 25)
            }
        }
    }
}

struct StartMenuView_Previews: PreviewProvider {
    static var previews: some View {
        StartMenuView()
    }
}
