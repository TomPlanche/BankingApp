//
//  SingleCardView.swift
//  BankingApp
//
//  Created by Tom Planche on 01/06/2021.
//

import SwiftUI

struct SingleCardView: View {

    @State var Card: Card
    @State var width: CGFloat
    @State var height: CGFloat
    
    @State var showView = false


    var body: some View {

        Button(action: {
            self.showView.toggle()
        }, label: {
            ZStack {
                Image(Card.type == "mastercard" ? "dark-card-bg" : "white-card-bg")
                    .resizable()
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(Card.name)
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .foregroundColor(Card.type == "mastercard" ? Color(#colorLiteral(red: 0.5037733844, green: 0.5123565051, blue: 0.5044908588, alpha: 1)) : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            Text("".cleanDollars("\(Card.amount)"))
                                .font(.system(size: 20, weight: .semibold, design: .monospaced))
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Image(systemName: "wave.3.forward")
                            .font(.system(size: 35))
                            .foregroundColor(Card.type == "mastercard" ? Color(.gray) : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    }.padding([.horizontal, .top])
                    Spacer()
                    HStack {
                        Text("**** \(String(Card.number.suffix(4)))")
                            .font(.system(size: 20, weight: .semibold, design: .monospaced))
                            .foregroundColor(Card.type == "mastercard" ? Color(.gray) : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                        Spacer()
                        if Card.type == "mastercard" {
                            Image("mastercard-logo")
                                .resizable()
                                .frame(width: 60, height: 40)
                        } else {
                            Image(systemName: "applelogo")
                                .font(.system(size: 35))
                                .foregroundColor(.white)
                        }
                    }
                    .padding([.bottom, .horizontal])
                }
            }
            .frame(width: width, height: height)
            .sheet(isPresented: $showView) {
                OnClickCardView(card: Card)
            }
        })

    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView(
            Card: Card(
                name: "Black Card",
                amount: "12647.79",
                type: "mastercard",
                number: "7642673489035612",
                cvv: "754"
            ),
            width: UIScreen.main.bounds.width / 1.75,
            height: UIScreen.main.bounds.height / 5.5
        )
            .previewDevice("iPhone 12 Pro Max")
    }
}

struct Card {

    let name: String
    let amount: String
    let type: String
    let number: String
    let cvv: String

    init(name: String, amount: String, type: String, number: String, cvv: String) {
        self.name = name
        self.amount = amount
        self.type = type
        self.number = number
        self.cvv = cvv
    }

}
