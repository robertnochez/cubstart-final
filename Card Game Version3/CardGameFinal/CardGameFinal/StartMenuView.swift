//
//  StartMenuView.swift
//  CardGameFinal
//
//  Created by Robert Nochez on 5/1/23.
//

import SwiftUI

struct StartMenuView: View {
    
    @State var isActive : Bool
    
    var body: some View {
        if (isActive) {
            ContentView()
        } else {
            VStack {
                
                Image(systemName: "hare.fill")
                    .font(.system(size: 80))
                    .foregroundColor(Color("DarkG"))
                    .padding()
                
                Text("Forest Finder")
                    .font(Font.custom("Bodoni 72 Smallcaps", size: 35))
                
                Button(action: {
                    self.isActive.toggle()
                }) {
                    Text("Start Game")
                        .font(Font.custom("Bodoni 72 Smallcaps", size: 25))
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 50)
                }
                .background(Color("DarkG"))
                .cornerRadius(10)
                .padding(.top, 25)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("LightG"))
        }
    }
}

struct StartMenuView_Previews: PreviewProvider {
    static var previews: some View {
        StartMenuView(isActive : false)
    }
}
