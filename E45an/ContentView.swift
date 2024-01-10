//
//  ContentView.swift
//  E45an
//
//  Created by Christine Johanson on 2024-01-10.
//

import SwiftUI

struct ContentView: View {
    
    @State var pictureCard = "card1"
    
    var body: some View {
        ZStack {
            
           // Color(.lightGray)
            //Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
            Color(red: 0.8, green: 0.9, blue: 0.85)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("E45an Bingo")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                Text("- din guide till Sveriges längsta riksväg")
                    .font(.subheadline)
                Image("sverige")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 15)
                //Image("forest")
                  //  .resizable()
                   // .aspectRatio(contentMode: .fill)


                VStack {
                    ZStack {
                    Image(pictureCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.frame(width: 500, height: 200)
                        .cornerRadius(5)
                        .shadow(radius: 15)
                    
                        HStack {
                            Spacer()
                            Button {
                                randomTips()
                            } label: {
                                Image(systemName: "chevron.forward.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 15.0)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.white)
                                
                                //.fixedSize(horizontal: "horizontal: 100", vertical: "vertical: 70")
                            }
                        }

                  //  Text("information")
                    //    .fontWeight(.bold)
                    //  .foregroundColor(Color.black)
                }
                    //.background(Rectangle()
                    //.foregroundColor(.white)
                   // .cornerRadius(10)
                    
            }
            }
            .padding()
        }
    }
    func randomTips() {
        print("knappen funkar!")
        //Random picture
        var pictureCardValue = Int.random(in: 1...36)
        pictureCard = "card" + String(pictureCardValue)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

