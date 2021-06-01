//
//  GoalView.swift
//  BankingApp
//
//  Created by Tom Planche on 02/06/2021.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(30)
                .foregroundColor(.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            HStack {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 10)
                        .opacity(0.3)
                        .foregroundColor(Color.gray)
                    
                    Circle()
                        .trim(from: 0, to: 0.85)
                        .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                        .foregroundColor(Color.blue)
                        .rotationEffect(Angle(degrees: 270.0))
                    
                    Text("85%")
                        .font(.system(size: 25, weight: .semibold, design: .monospaced))
                    
                }
                .frame(width: UIScreen.main.bounds.height / 8, height: UIScreen.main.bounds.height / 8)
                .padding()
                
                
                VStack(alignment: .leading) {
                    Text("Accumulate $ 15 000")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .padding(.bottom, 10)
                    
                    Text("Interest every month with a saving account")
                        .foregroundColor(.gray)
                }
                
            }
        }
        .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.height / 5.5)
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12 Pro Max")
    }
}
