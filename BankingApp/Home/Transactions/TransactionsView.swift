//
//  TransactionsView.swift
//  BankingApp
//
//  Created by Tom Planche on 02/06/2021.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        VStack {
            SingleTransactionView(
                name: "Uber",
                description: "Taxi",
                amount: "29.02",
                imageName: "uber-logo",
                rectangleColor: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
            )
            SingleTransactionView(
                name: "Bouygues",
                description: "Phone",
                amount: "23.43",
                imageName: "bouygues-logo",
                rectangleColor: Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
            )
        }
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
