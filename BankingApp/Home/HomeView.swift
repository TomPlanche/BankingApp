//
//  HomeView.swift
//  BankingApp
//
//  Created by Tom Planche on 01/06/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ZStack {
                Color("top-bg")
                    .ignoresSafeArea(edges: .top)
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Good Morning")
                                .font(.system(size: 22, design: .serif))
                            Text("Tom")
                            
                                .font(.system(size: 35, weight: .semibold ,design: .serif))
                        }
                        Spacer()
                        ZStack {
                            Rectangle()
                                .cornerRadius(20)
                                .foregroundColor(.white.opacity(0.4))
                                .frame(width: 80, height: 80)
                            Image("toms-memoji")
                                .resizable()
                                .frame(width: 80, height: 80)
                        }
                    }.padding(.horizontal)
                    CardView()
                    Spacer()
                }
            }
            Spacer().frame(height: UIScreen.main.bounds.height / 2)
            VStack {
                Text("oui")
                Text("oui")
                Text("oui")
                Text("oui")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
