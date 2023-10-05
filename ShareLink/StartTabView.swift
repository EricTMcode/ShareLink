//
//  StartTabView.swift
//  ShareLink
//
//  Created by Eric on 05/10/2023.
//

import SwiftUI

struct StartTabView: View {
    var body: some View {
        TabView() {
            BasicsView()
                .tabItem {
                    Label("The Basics", systemImage: "1.circle.fill")
                }
            WineView()
                .tabItem {
                    Label("Wine Label", systemImage: "2.circle.fill")
                }
        }
    }
}

#Preview {
    StartTabView()
}
