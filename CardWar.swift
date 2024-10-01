//
//  CardWar.swift
//
//  Created by James Ashley on 3/2/2024.
//

import SwiftUI

struct CardWar: View {
    
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card14"
    @State var cpuCard = "card2"
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("CardWarTitle")
                    .resizable()
                    .scaledToFit()
                    .frame(width:180,height:180)
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    if playerRand > cpuRand{
                        playerScore += 1
                    }
                    else if playerRand < cpuRand{
                        cpuScore += 1
                    }
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    
                }, label: {
                    Image("CardWarDeal")
                        .resizable()
                        .scaledToFit()
                        .frame(width:130)
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.title3)
                            .fontWeight(.medium)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .font(.title3)
                            .fontWeight(.medium)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    CardWar()
}
