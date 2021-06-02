//
//  SingleTransactionView.swift
//  BankingApp
//
//  Created by Tom Planche on 02/06/2021.
//

import SwiftUI

struct SingleTransactionView: View {
    
    @State var name: String
    @State var description: String
    @State var amount: String
    
    @State var imageName: String
    @State var rectangleColor: Color
    
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .cornerRadius(15)
                    .foregroundColor(rectangleColor)
                    .frame(width: 60, height: 60)
                Image(imageName)
                    .resizable()
                    .frame(width: 40, height: 35)
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                Spacer()
                Text(description)
                    .font(.system(size: 15, weight: .semibold, design: .monospaced))
                    .foregroundColor(.gray)
            }.padding(.vertical, 30)
            Spacer()
            Text("-" + "".cleanDollars("\(amount)"))
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
        }
        .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.height / 12)

    }
}

struct SingleTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        SingleTransactionView(
            name: "Uber Eats",
            description: "Food",
            amount: "23.43",
            imageName: "uber-eats-logo",
            rectangleColor: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        )
            .previewDevice("iPhone 12 Pro Max")
    }
}
