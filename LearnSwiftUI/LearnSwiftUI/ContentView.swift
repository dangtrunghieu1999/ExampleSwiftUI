//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Kai on 09/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BuyView()
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPhone SE (2nd generation")
        }
        .previewDevice("iPhone SE (3rd generation)")
    }
}
