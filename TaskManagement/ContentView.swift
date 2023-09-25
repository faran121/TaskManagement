//
//  ContentView.swift
//  TaskManagement
//
//  Created by Maliks on 24/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.BG)
            .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
