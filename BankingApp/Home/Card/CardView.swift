//
//  CardView.swift
//  BankingApp
//
//  Created by Tom Planche on 01/06/2021.
//

import SwiftUI

struct CardView: View {

    var card1 = Card(
        name: "Black Card",
        amount: "12647.79",
        type: "mastercard",
        number: "7642673489035612",
        cvv: "754"
    )

    var card2 = Card(
        name: "Silver Card",
        amount: "6452.63",
        type: "apple",
        number: "7642673489032645",
        cvv: "754"
    )
    
    @State var showView = false

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button(action:  {
                    self.showView.toggle()
                }, label: {
                        ZStack {
                            Rectangle()
                                .cornerRadius(20)
                                .foregroundColor(.white.opacity(0.7))
                                .frame(width: UIScreen.main.bounds.width / 6)
                            Image(systemName: "plus")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                    }).frame(width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.height / 5.5)
                Button(action: {
                    self.showView.toggle()
                }, label: {
                    SingleCardView(
                        Card: card1,
                        width: UIScreen.main.bounds.width / 1.75,
                        height: UIScreen.main.bounds.height / 5.5
                    )
                })
                .sheet(isPresented: $showView) {
                    OnClickCardView(card: card1)
                }
                
                Button(action: {
                    self.showView.toggle()
                }, label: {
                    SingleCardView(
                        Card: card2,
                        width: UIScreen.main.bounds.width / 1.75,
                        height: UIScreen.main.bounds.height / 5.5
                    )
                })
                .sheet(isPresented: $showView) {
                    OnClickCardView(card: card2)
                }
            }
        }.padding(.horizontal, 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro Max")
    }
}
