//
//  ContentView.swift
//  BankingApp
//
//  Created by Tom Planche on 01/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "tab-bar-color")
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
        }//.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}


extension String {
    func cleanDollars(_ value: String?) -> String {
        guard value != nil else { return "$0.00" }
        let doubleValue = Double(value!) ?? 0.0
        let formatter = NumberFormatter()
        formatter.currencyCode = "USD"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = (value!.contains(".00")) ? 0 : 2
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .currencyAccounting
        
        return formatter.string(from: NSNumber(value: doubleValue)) ?? "$\(doubleValue)"
    }
}
