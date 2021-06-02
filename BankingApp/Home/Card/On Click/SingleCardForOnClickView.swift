//
//  SingleCardForOnClickView.swift
//  BankingApp
//
//  Created by Tom Planche on 02/06/2021.
//

import SwiftUI

struct SingleCardForOnClickView: View {
    
    @State var card: Card
    
    var body: some View {
        
        ZStack {
            Image(card.type == "mastercard" ? "dark-card-bg" : "white-card-bg")
                .resizable()
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(card.name)
                            .font(.system(size: 18, weight: .medium, design: .default))
                            .foregroundColor(card.type == "mastercard" ? Color(#colorLiteral(red: 0.5037733844, green: 0.5123565051, blue: 0.5044908588, alpha: 1)) : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                        Text("".cleanDollars("\(card.amount)"))
                            .font(.system(size: 20, weight: .semibold, design: .monospaced))
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Image(systemName: "wave.3.forward")
                        .font(.system(size: 35))
                        .foregroundColor(card.type == "mastercard" ? Color(.gray) : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                }.padding([.horizontal, .top])
                Spacer()
                HStack {
                    Text("**** \(String(card.number.suffix(4)))")
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                        .foregroundColor(card.type == "mastercard" ? Color(.gray) : Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    Spacer()
                }
                .padding([.bottom, .horizontal])
            }
        }
        
    }
}

struct SingleCardForOnClickView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardForOnClickView(
            card: Card(
                name: "Silver Card",
                amount: "6452.63",
                type: "apple",
                number: "7642673489032645",
                cvv: "754"
            )
        )
    }
}
