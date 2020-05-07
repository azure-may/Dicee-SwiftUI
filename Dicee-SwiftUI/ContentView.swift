//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Azure May Burmeister on 3/15/20.
//  Copyright © 2020 Azure May Burmeister. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDie: Int = 1
    @State var rightDie: Int = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDie)
                    DiceView(n: rightDie)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDie = Int.random(in: 1...6)
                    self.rightDie = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            .cornerRadius(15)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
