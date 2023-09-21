//
//  ContentView.swift
//  Dice_Roll_App
//
//  Created by Ibrahim Medhat on 20/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("GreenBackground")
                .resizable()
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .ignoresSafeArea()
            VStack{
                Image("DiceeLogo")
                    .resizable()
                    .padding()
                    .frame(width: 260, height: 200)

                Spacer()
                HStack{
                    Spacer()
                    Image("DiceOne").padding()
                    Spacer()
                    Image("DiceSix").padding()
                    Spacer()

                }
                Spacer().frame(height: 50)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Roll").foregroundColor(.white).font(.largeTitle)
                })
                Spacer()
            }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
               
        }
           
     }
}

#Preview {
    ContentView()
}
