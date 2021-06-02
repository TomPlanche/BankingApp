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

                                .font(.system(size: 35, weight: .semibold, design: .serif))
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
                }.frame(height: 320)
            }
            VStack(alignment: .leading) {

                HStack {
                    Text("Current Goal")
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                    Spacer()
                }

                GoalView()

                HStack {
                    Text("Transactions")
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                    Spacer()
                }
                
                TransactionsView().padding(.bottom)
                
                Spacer()

            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
