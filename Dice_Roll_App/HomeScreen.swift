//
//  ContentView.swift
//  Dice_Roll_App
//
//  Created by Ibrahim Medhat on 20/09/2023.
//

import SwiftUI
struct ContentView: View {
    let diceList = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    
    @State var firstDice : String = "DiceOne"
    @State var secondDice : String = "DiceOne"
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
                    Image(firstDice).padding()
                    Spacer()
                        .accessibilityIdentifier("imag1")
                    Image(secondDice).padding()
                    Spacer()
                    
                }
                Spacer().frame(height: 50)
                Button(action: {
                    firstDice = diceList[randomDice()]
                    secondDice = diceList[randomDice()]

                }, label: {
                    Text("Roll")
                        .padding()
                        .background(.redColorDice)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                })
                Spacer()
            }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            
        }
        
    }
    func randomDice()->Int{
        let randomNo:Int = Int.random(in: (0...5));
        return randomNo;
    }

}


#Preview {
    ContentView()
}
