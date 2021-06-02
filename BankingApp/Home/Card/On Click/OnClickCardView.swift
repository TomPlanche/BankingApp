//
//  OnClickCardView.swift
//  BankingApp
//
//  Created by Tom Planche on 02/06/2021.
//

import SwiftUI

struct OnClickCardView: View {

    @State var card: Card

    let images = ["lock.fill", "arrow.up.circle.fill", "plus.circle.fill"]
    let names = ["Block", "Pay", "Top Up"]

    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/ { }/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Rectangle()
                                .cornerRadius(15)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .shadow(radius: 4)
                            Image(systemName: "arrow.backward")
                                .font(.system(size: 30, weight: .semibold, design: .monospaced))
                                .foregroundColor(.black)
                        }
                    })
                Spacer()
                Text("**** \(String(card.number.suffix(4)))")
                    .font(.system(size: 25, weight: .bold, design: .monospaced))
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/ { }/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Rectangle()
                                .cornerRadius(15)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .shadow(radius: 4)
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 30, weight: .semibold, design: .monospaced))
                                .foregroundColor(.black)
                        }
                    })
            }.padding()
            HStack {
                VStack(alignment: .leading) {
                    Spacer()
                    Text(card.name)
                        .font(.system(size: 25, weight: .semibold, design: .monospaced))
                        .padding([.leading, .bottom], 15)
                    Text("".cleanDollars(card.amount))
                        .font(.system(size: 30, weight: .bold, design: .monospaced))
                        .padding([.leading, .bottom], 25)
                    Text("For the current billing period, you will earn $12.23 cashback")
                        .font(.system(size: 20, weight: .light, design: .rounded))
                        .foregroundColor(.gray)
                        .frame(width: 260)
                        .padding([.leading, .bottom])
                    HStack {
                        Image(systemName: "arrow.up.circle")
                            .font(.system(size: 30, weight: .semibold, design: .monospaced))
                            .foregroundColor(.green)
                        Text("$ 12.23")
                            .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    }.padding(.leading)
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.height / 4.5))
                    .offset(x: 95)
                SingleCardForOnClickView(card: card)
                    .frame(width: UIScreen.main.bounds.width / 1.2, height: UIScreen.main.bounds.height / 4)
                    .offset(x: 140)

            }
                .frame(height: UIScreen.main.bounds.height / 3)
                .padding(.leading, 10)

            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                ForEach(0 ..< images.count) {
                    let name = self.names[$0]
                    let image = self.images[$0]
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Rectangle()
                                .cornerRadius(20)
                                .foregroundColor(Color(#colorLiteral(red: 0.961, green: 0.961, blue: 0.969, alpha: 1)))
                                .frame(width: 110, height: 100)
                            VStack {
                                Image(systemName: image)
                                    .font(.system(size: 35, weight: .semibold, design: .monospaced))
                                    .padding(.bottom, 10)
                                Text(name)
                                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                            }.foregroundColor(.black)
                        }
                })
                }
            }.padding()
            
            HStack {
                Text("Next Write-Offs")
                    .font(.system(size: 25, weight: .bold, design: .monospaced))
                Spacer()
            }.padding()
            HStack {
                SingleNextWrite_OffView(
                    name: "Netflix",
                    imageName: "netflix-logo",
                    amount: "15.99",
                    description: "Netflix Monthly Subscription",
                    daysBeforeCancellation: "4"
                )
                SingleNextWrite_OffView(
                    name: "Twitch",
                    imageName: "twitch-logo",
                    amount: "5.99",
                    description: "Terracid Subscription",
                    daysBeforeCancellation: "9"
                )
            }

        }
    }
}

struct OnClickCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnClickCardView(
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
