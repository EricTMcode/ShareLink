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
                ShareLink(item: "String Item")
                ShareLink(item: URL(string: "https://activ-informatique.com")!)
                ShareLink("Some Text", item: "String Item")
                ShareLink(Text("\(Image(systemName: "plus.circle.fill")) - With SFImage"), item: "String Item")
                ShareLink("Item Subject - No Preview", item: "String Item", subject: Text("Subject"))
                ShareLink("Item Subject Message", item: "String Item", subject: Text("Subject"), message: Text("The Message"))
                ShareLink("URL Subject Message", item: URL(string: "https://activ-informatique.com")!, subject: Text("Subject"), message: Text("The Message"))
                ShareLink(item: "String Item",
                          subject: Text("A Subject"),
                          message: Text("The Message")) {
                    HStack {
                        Image(.label)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                        Text("Share it")
                    }
                }
                ShareLink("Item Message", item: "String Item", message: Text("The Message"))
                Spacer()
            }
            .font(.title)
            .padding()
            .navigationTitle("ShareLinksBasics")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    ShareLink("Share", item: "Some Text")
                }
            }
        }
    }
}

#Preview {
    BasicsView()
}
