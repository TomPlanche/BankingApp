//
//  SingleNextWrite-OffView.swift
//  BankingApp
//
//  Created by Tom Planche on 02/06/2021.
//

import SwiftUI

struct SingleNextWrite_OffView: View {
    
    @State var name: String
    @State var imageName: String
    @State var amount: String
    @State var description: String
    @State var daysBeforeCancellation: String
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(.white)
                .shadow(radius: 5)
            VStack {
                HStack {
                    ZStack {
                        Color(.black)
                            .cornerRadius(20)
                            .frame(width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.height / 12)
                        Image(imageName)
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.height / 20)
                            
                    }
                    VStack(alignment: .leading) {
                        Text("".cleanDollars(amount))
                            .font(.system(size: 22, weight: .semibold, design: .monospaced))
                            .padding(.bottom, 5)
                        Text(description)
                            .font(.system(size: 12, weight: .regular, design: .monospaced))
                            .foregroundColor(.gray)
                            .frame(height: 45.0)
                    }.padding(.leading, 4)
                }
                
                HStack {
                    Text(name)
                        .font(.system(size: 15, weight: .semibold, design: .monospaced))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 5)
                            .opacity(0.3)
                            .foregroundColor(Color.gray)
                            .frame(width: 50, height: 50)
                        
                        Circle()
                            .trim(from: 0, to: CGFloat(1 - (Double(daysBeforeCancellation)! / 20)))
                            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .foregroundColor(Color.blue)
                            .frame(width: 50, height: 50)
                            .rotationEffect(Angle(degrees: 270.0))
                        
                        Text(daysBeforeCancellation)
                            .font(.system(size: 25, weight: .semibold, design: .monospaced))
                        
                    }
                    
                    Text("Days Before Cancellation")
                        .font(.system(size: 13, weight: .semibold, design: .monospaced))

                }
            }.padding(.horizontal, 5)
        }.frame(width: UIScreen.main.bounds.width / 2.15, height: UIScreen.main.bounds.height / 4)
        
    }
}


struct SingleNextWrite_OffView_Previews: PreviewProvider {
    static var previews: some View {
        SingleNextWrite_OffView(
            name: "Netflix",
            imageName: "netflix-logo",
            amount: "15.99",
            description: "Netflix Monthly Subscription",
            daysBeforeCancellation: "4"
        )
    }
}
