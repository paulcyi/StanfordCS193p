//
//  ContentView.swift
//  Memorize
//
//  Created by Paul Yi on 10/14/20.
//

import SwiftUI

struct ContentView: View {
   var viewModel: EmojiMemoryGame
   
   var body: some View {
      HStack {
         ForEach(viewModel.cards) { card in
            CardView(card: card)
         }
      }
         .padding()
         .foregroundColor(Color.orange)
         .font(Font.largeTitle)
   }
}


struct CardView: View {
   var card: MemoryGame<String>.Card
   
   var body: some View {
      ZStack {
         if card.isFaceUp {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
            Text(card.content)
            RoundedRectangle(cornerRadius: 10.0).fill()
         } else {
            RoundedRectangle(cornerRadius: 10.0).fill()
         }
      }
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView(viewModel: EmojiMemoryGame())
   }
}

