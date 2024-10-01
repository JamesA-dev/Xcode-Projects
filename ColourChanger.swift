//
//  ColourChanger.swift
//
//  Created by James Ashley on 28/1/2024.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    //variables
    
    @State private var backgroundColor: String = "White"
    @State private var mute: Bool = false
    
    //content
    var body: some View {
        
        
        ZStack {
        
            if backgroundColor == "Red" {
                Color.red
                    .ignoresSafeArea()
            }
            else if backgroundColor == "Orange" {
                Color.orange
                    .ignoresSafeArea()
            }
            else if backgroundColor == "Yellow" {
                Color.yellow
                    .ignoresSafeArea()
            }
            else if backgroundColor == "Green" {
                Color.green
                    .ignoresSafeArea()
            }
            else if backgroundColor == "Purple" {
                Color.purple
                    .ignoresSafeArea()
            }
            else if backgroundColor == "Blue" {
                Color.blue
                    .ignoresSafeArea()
            }
            else if backgroundColor == "Brown" {
                Color.brown
                    .ignoresSafeArea()
            }
            else if backgroundColor == "White" {
                Color.white
                    .ignoresSafeArea()
            }
            else if backgroundColor == "Gray" {
                Color.gray
                    .ignoresSafeArea()
            }
            
            VStack {
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Button {
                        mute.toggle()
                    } label: {
                        if mute == false {
                            Image(systemName: "speaker")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30,height: 30)
                                .colorMultiply(.black)
                        } else if mute == true {
                            Image(systemName: "speaker.slash")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30,height: 30)
                                .colorMultiply(.black)
                        }
                    }
                    Spacer()
                }
                Spacer()
                Button {
                    backgroundColor = "White"
                    if mute == false {
                        AudioServicesPlaySystemSound(1023)
                    }
                } label: {
                    Text("Colour Changer")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.all)
                        .background(Color.white)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    Button {
                        //Action for the button
                        backgroundColor = "Red"
                        if mute == false {
                            AudioServicesPlaySystemSound(1000)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.red
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                    Button {
                        //Action for the button
                        backgroundColor = "Orange"
                        if mute == false {
                            AudioServicesPlaySystemSound(1001)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.orange
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                    Button {
                        //Action for the button
                        backgroundColor = "Yellow"
                        if mute == false {
                            AudioServicesPlaySystemSound(1002)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.yellow
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                    Button {
                        //Action for the button
                        backgroundColor = "Green"
                        if mute == false {
                            AudioServicesPlaySystemSound(1003)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.green
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                }
                HStack {
                    Button {
                        //Action for the button
                        backgroundColor = "Purple"
                        if mute == false {
                            AudioServicesPlaySystemSound(1004)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.purple
                            .border(Color.black, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                    Button {
                        //Action for the button
                        backgroundColor = "Blue"
                        if mute == false {
                            AudioServicesPlaySystemSound(1013)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.blue
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                    Button {
                        //Action for the button
                        backgroundColor = "Brown"
                        if mute == false {
                            AudioServicesPlaySystemSound(1006)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.brown
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                    Button {
                        //Action for the button
                        backgroundColor = "Gray"
                        if mute == false {
                            AudioServicesPlaySystemSound(1008)
                        }
                    } label: {
                        //How the button looks
                        Text("      ")
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .background(Color.gray
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3))
                            .cornerRadius(7)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .bold()
                    }
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
