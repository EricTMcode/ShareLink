//
//  BasicsView.swift
//  ShareLink
//
//  Created by Eric on 05/10/2023.
//

import SwiftUI

struct BasicsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                //  Basic Link
                Spacer()
            }
            .font(.title)
            .padding()
            .navigationTitle("ShareLinksBasics")
        }
    }
}

#Preview {
    BasicsView()
}
